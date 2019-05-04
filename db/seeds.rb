# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

response = HTTParty.get("https://uifaces.co/api?limit=205&from_age=18&to_age=40&emotion[]=happiness", {
  headers: {
    "X-API-KEY" => "14198bec5b8c608a3d0c06b0b3915a"
  }
})

parsed = JSON.parse(response.body)
pics = []
parsed.each do |ele|
  pics << ele["photo"]
  puts "added a random picture"
end

skills = [
  "After Effects",
  "Final Cut Pro",
  "Illustrator",
  "InDesign", 
  "Photoshop",
  "Premiere Pro",
  "Sketch",
  "Bash/Shell",
  "C#",
  "C++",
  "CSS",
  "HTML",
  "Java",
  "JavaScript",
  "Python",
  "Ruby",
  "SQL"
]

skills.each do |skill|
  Skill.create(name: skill)
  puts "Created the skill: #{skill}"
end

locations = [
  "Sydney CBD",
  "Inner West",
  "Eastern Suburbs",
  "North Shore",
  "Northern Beaches",
  "North West",
  "Hills District",
  "Western Suburbs",
  "South Sydney",
  "Sutherland Shire",
  "South West"
]

locations.each do |location|
  Location.create(name: location)
  puts "Created location: #{location}"
end

for i in 1..200
  User.create(
    email: "ama+#{i}@test.com",
    password: "testpass",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: rand(0..1),
    age: rand(18..40),
    bio: Faker::Hipster.paragraph(5),
    portfolio_url: "http://#{Faker::Internet.domain_name}",
    profile_complete: true,
    stripe_payment: true,
    location_id: rand(1..locations.length),
    company: Faker::Company.name,
    occupation: Faker::Name.last_name
  )
  puts "Created #{i} users"
end

users = User.all
users.each_with_index do |user, i|
  rand(10..12).times do
    idx = rand(0..(Skill.all.length - 1))
    user.skills << Skill.all[idx] unless user.skills.include?(Skill.all[idx])
  end
  puts "added skills to user #{i}"
  user.picture.attach(io: open(pics[i]), filename: 'dummy.jpg', content_type: 'img/jpg')
  puts "attached a picture to user #{i}"
end