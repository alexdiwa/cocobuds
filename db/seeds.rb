# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Making the HTTP request
response = HTTParty.get("https://uifaces.co/api?limit=205&from_age=18&to_age=40&emotion[]=happiness", {
  headers: {
    "X-API-KEY" => "14198bec5b8c608a3d0c06b0b3915a"
  }
})

# saving request results to variable -- this is an array
parsed = JSON.parse(response.body)

#create a new array that will store our picture urls
pics = []
# cycling through results (array) and adding each picture URL to our pics array.
parsed.each do |ele|
  pics << ele["photo"]
  puts "added a random picture"
end
#pics now is an array with 205 picture urls.

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

for i in 1..20
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
    occupation: "Junior"
  )
  puts "Created #{i} users"
end

users = User.all
# iterating through users array with an each_with_index method that gives
# us access both the element and the index of that element with each successive cycle
users.each_with_index do |user, i|
  rand(10..12).times do
    idx = rand(0..(Skill.all.length - 1))
    user.skills << Skill.all[idx] unless user.skills.include?(Skill.all[idx])
  end
  puts "added skills to user #{i}"
  
  #user.picture.attach attaches a picture to that user. We attach the picture at index i in pics array user i in user array.
  user.picture.attach(io: open(pics[i]), filename: 'dummy.jpg', content_type: 'img/jpg')
  puts "attached a picture to user #{i}"
end

# Seeding conversations:
# generate pairs of user ids:

a = (1..10).to_a
pairs = a.permutation(2).to_a
pairs.map!{ |pair| pair.sort! }.uniq!
# pairs now is an array with each element being a unique pair of user ids spanning users 1 to 10
# 45 conversations in total! (pairs.length)

pairs.each do |pair|
  Conversation.create!(sender_id: pair[0], receiver_id: pair[1])
end

conversations = Conversation.all
conversations.each do |conversation|
  ids = [conversation.sender_id, conversation.receiver_id]
  randnum = rand(3..5)
  randnum.times do
    message = conversation.messages.new(
      user_id: ids.sample,
      body: Faker::Hipster.paragraph(rand(2..4))
    )
    message.save
  end
  puts "created a message thread beteen users #{conversation.sender_id} and #{conversation.receiver_id} with #{randnum} messages"
end