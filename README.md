![Cocobuds](https://user-images.githubusercontent.com/47341093/57512885-41cc5980-7350-11e9-95ad-3f218b49af66.png)

#### Cocobuds: An app built on Rails by [Antonella Markahe](https://github.com/Antoonella), [Michael Bahari](https://github.com/ugkid) and [Alex Diwa](https://github.com/alxdwa). ####

**Cocobuds Live**: https://cocobuds.herokuapp.com<br />
**GitHub Repo**: https://github.com/alxdwa/rails-assessment<br />

### Project Description: ###

This project is a two sided marketplace where designers/developers can provide each other with learning and teaching benefits. There is a growing demand for designers who can develop and developers who can design. This platform allows users to network with users whom they might be interested in learning from. Through this platform, we aim to create a community and culture of skill sharing.

### What's a Cocobud? ###

Cocobuds are life-long learners who want to share their knowledge and pick up new skills in the process. Cocobuds can be designers or developers who want to meet, upskill and learn from each other. 

### Functionality and Features ###

Our app facilitates connection between designers and developers. This is accomplished through the following features:

* Users (designers/developers) sign up for an password-protected account that gives them access to the app's functionality.
* Once logged in, users can establish their online presence through a profile that showcases their skills and personality.
* Users can edit and delete their profile, and upload a profile picture.
* Users can find other users quickly based on several search criteria: first name and/or last name, location, by category (designer/developer) or by skill(s). 
* Users can add and remove other users to/from their favourites, and know when someone has favourited them back. This acts as an 'ice breaker' of sorts that reduces the awkwardness associated with contacting others for the first time. 
* Users can message other users one-on-one in a chatbox, and access all their conversations on an inbox page.
* Users can make a secure payment/donation that helps keep the service running.

### Screenshots ###

Below are some screenshots from our app as of 10th May 2019.

**Landing Page**
<img width="1440" alt="2_landing" src="https://user-images.githubusercontent.com/47341093/57514959-eea8d580-7354-11e9-9127-6faf12283dd8.png">
<img width="1152" alt="2a_landing" src="https://user-images.githubusercontent.com/47341093/57515633-74795080-7356-11e9-95f9-eaac719cf33f.png">
<img width="1435" alt="3_landing" src="https://user-images.githubusercontent.com/47341093/57514960-ef416c00-7354-11e9-95bd-1281bd69595c.png">

**Preview Search Results Page**

<img width="1325" alt="3_preview" src="https://user-images.githubusercontent.com/47341093/57519221-1e101000-735e-11e9-9c73-16b695d7c332.png">

**Sign Up Page**
<img width="1149" alt="3a_signup" src="https://user-images.githubusercontent.com/47341093/57515388-dc7b6700-7355-11e9-9227-35d6c1ebfe19.png">

**Sign In Page**
<img width="1154" alt="3b_signin" src="https://user-images.githubusercontent.com/47341093/57515390-dc7b6700-7355-11e9-8f83-79d5cf274f66.png">

**Donation Page**
<img width="1436" alt="4_donate" src="https://user-images.githubusercontent.com/47341093/57514961-ef416c00-7354-11e9-8b1e-3f13873d8ae2.png">

**User Profile Page**
<img width="1440" alt="5_profile" src="https://user-images.githubusercontent.com/47341093/57514965-ef416c00-7354-11e9-8b68-b127d3d21e8c.png">

**Edit Profile Page**
<img width="1153" alt="5a_editprofile" src="https://user-images.githubusercontent.com/47341093/57515457-09c81500-7356-11e9-9edd-130b6b505a5a.png">

**Search Page for User Profiles**
<img width="1149" alt="6b_fullsearch" src="https://user-images.githubusercontent.com/47341093/57515494-23695c80-7356-11e9-811e-545a44ebbbad.png">

**Favourites Page**
<img width="1440" alt="7_favourites" src="https://user-images.githubusercontent.com/47341093/57514967-efda0280-7354-11e9-9ffa-db59620b374b.png">

**Inbox**
<img width="1440" alt="8_inbox" src="https://user-images.githubusercontent.com/47341093/57514968-efda0280-7354-11e9-8ee3-b2aec5a5f597.png">

**Message/Chat Thread**
<img width="1440" alt="9_messages" src="https://user-images.githubusercontent.com/47341093/57514969-f0729900-7354-11e9-9b4b-f28e2dfc4b49.png">


### Tech Stack ###

<img width="455" alt="10_techstack" src="https://user-images.githubusercontent.com/47341093/57516336-de462a00-7357-11e9-8d85-1cd26728f7ea.png">

## Instructions for use ##

For local use of the app, perform the following operations in the CLI:

1. Clone the git repository locally:
```
git clone https://github.com/alxdwa/rails-assessment.git
```
2. Move into the directory:
```
cd rails-assessment
```
3. Install gems:
```
bundle install
```
4. Ensure PostgreSQL is running and initialize the database:
```
rails db:create
```
5. Run migrations
```
rails db:migrate
```
6. Seed the database with dummy data (optional)
```
rails db:setup
```
7. Open up a browser and go to http://localhost:3000
8. Enjoy!

## Design Documentation ##

### Design process ###

Our design process comprised of several steps:

1. Brainstorming ideas for our app and defining the problem we wanted to solve. We started by thinking about apps that we'd like to use ourselves. 
2. Brainstorming solutions: what kind of app could address the needs we're looking for? What would it look like? What other apps are there that are similar? What do they lack?
3. Translating these thoughts into a user flow diagram and wireframes for desktop and mobile. 
4. Translating the wireframes into an Entity Relationship Diagram that captures all the necessary tables we would store our data in.
5. Using agile development for our app while moodboarding and thinking about styling for the front-end.

### User Stories ###

* As a developer/designer, I want to be able to learn from someone face to face.
* As a developer/designer, I want to give back to the community by sharing my skills.
* As a developer/designer, I want to be able to find others easily so I can learn from them. 
* As a developer/designer, I want to be able to contact someone with skills I want to learn in a way that isn't awkward or intimidating.

### Flow Diagram ###

![11_flowchart](https://user-images.githubusercontent.com/47341093/57518401-4434b080-735c-11e9-998d-e0f2514e66dc.png)

### Wireframes ###

#### Mobile ####

![17_mobile_1](https://user-images.githubusercontent.com/47341093/57518622-c8873380-735c-11e9-8308-743c040f8b6d.png)
![18_mobile_2](https://user-images.githubusercontent.com/47341093/57518623-c8873380-735c-11e9-999f-bfd4ef70428a.png)
![19_mobile_3](https://user-images.githubusercontent.com/47341093/57518624-c8873380-735c-11e9-8eaa-8286e331c777.png)
![20_mobile_4](https://user-images.githubusercontent.com/47341093/57518625-c91fca00-735c-11e9-93e4-b8e65f1d5ab0.png)

#### Desktop ####

<img width="496" alt="12_desktop_1" src="https://user-images.githubusercontent.com/47341093/57518614-c7560680-735c-11e9-8a5b-bd41908f7164.png">
<img width="693" alt="13_desktop_2" src="https://user-images.githubusercontent.com/47341093/57518617-c7560680-735c-11e9-9a3e-3d31d6d25036.png">
<img width="752" alt="14_desktop_3" src="https://user-images.githubusercontent.com/47341093/57518618-c7ee9d00-735c-11e9-8234-1611b124e0a8.png">
<img width="898" alt="15_desktop_4" src="https://user-images.githubusercontent.com/47341093/57518619-c7ee9d00-735c-11e9-9101-abfe3d07febc.png">
<img width="966" alt="16_desktop_5" src="https://user-images.githubusercontent.com/47341093/57518620-c7ee9d00-735c-11e9-91b5-64efb2ddef39.png">

#### Design Elements ####

**Experimenting with design elements, colour and typography**

![21_illustrator_1](https://user-images.githubusercontent.com/47341093/57518626-c91fca00-735c-11e9-9867-af4541ba45d6.png)
![22_illustrator_2](https://user-images.githubusercontent.com/47341093/57518628-c91fca00-735c-11e9-9c4a-50270d5efb62.png)

### Database Entity Relationship Diagram ###

<img width="963" alt="23_ERD" src="https://user-images.githubusercontent.com/47341093/57518781-33d10580-735d-11e9-86e5-1cf320e3fee5.png">

## Planning Documentation ##

### Planning process ###

After drafting our plans in the form of wireframes and an ERD, we started planning how we would accomplish our goal of producing a working MVP by the end of the two weeks. We came up with an initial plan and timeline as a starting point, while working iteratively using the Agile method.

We used Trello and Google Docs for project management. Our work was accomplished over 5 sprints. Each sprint included their own Trello board with 3 main columns—To Do, In Progress and Done. To keep track of what we were doing, we used Google Docs/Sheets/Keep extensively for the planning, documentation and testing process.

### Project Plan & Timeline ###

* Mon 29th Apr:
  * Brainstorm
  * Mock up wireframes
  * Produce ERD
* Tues 30th Apr:
  * Have ERD approved
  * Begin setting up tables in database and migrations: User model, Location model, Skill model and users_skills join table, seeding location and user data, configuring routes
  * Set up Devise for user authentication.
* Weds 1st May:
  * Expand to create full CRUD resource for User: new/edit user forms, form partials
  * Devise redirects
  * Set up AWS and ActiveStorage
  * Set up checkbox and associated controller methods for user skills
* Thurs 2nd May:
  * Set up Stripe payments for donations
  * Started attempting to implement search methods for filtering users based on criteria (location, developer/designer, skills)
* Fri 3rd May:
  * Continued with Stripe payments
  * Continued implementing search methods
  * Set up landing page and preview search page/form for new users
  * Began setting up messaging/conversation system
* Sat 4th May:
  * Seeded profiles with pictures using HTTParty and UI Faces API
  * Began some styling using Bootstrap
* Sun 5th May:
  * Continued with inbox and messages back- and front-end, seeded messages
* Mon 6th May:
  * Pagination of search results
  * Debugging messaging system and links to facilitate clean and easy interaction between users
  * Adding name search bar to search results filter
* Tues 7th May:
  * Implement favouriting/following system, seed favourites for users
  * Tidying up user flow throughout the site and redirects
  * Begin moodboarding and experimenting with front-end /design/UI elements
  * Start planning testing
* Weds 8th May
  * Tidying up code, particularly back end and database calls, sanitising input
  * Writing code comments
  * Attempt automated testing, but fall back on manual testing using a spreadsheet
  * Beginning short answer questions
  * Work on form validation
* Thurs 9th May
  * Finishing touches for views and working on bootstrap styling
  * Deploy to Heroku
  * Continue working on form validation but with little success
* Fri 10th May
  * Fixing bugs
  * Compiling README.md
  * Continue documentation and short answer questions
  * Tidying up views and front-end
  * Apply any updates to live version on Heroku
  * Write presentation
* Sat 11th May
  * Finish short answer questions
  * Finish README.md
  * Prepare to submit

### Screenshots of Trello boards ###

**Brainstorming**
<img width="1123" alt="24_trello_brainstorming" src="https://user-images.githubusercontent.com/47341093/57520947-4a2d9000-7362-11e9-9124-936f1c9b5c55.png">

**Sprint 1**
<img width="838" alt="25_sprint1" src="https://user-images.githubusercontent.com/47341093/57520884-2702e080-7362-11e9-957e-8350f4b9000b.png">

**Sprint 2**
<img width="839" alt="26_sprint2" src="https://user-images.githubusercontent.com/47341093/57520886-2702e080-7362-11e9-8ff3-abf336a599e9.png">

**Sprint 3**
<img width="843" alt="27_sprint3" src="https://user-images.githubusercontent.com/47341093/57520888-2702e080-7362-11e9-8bd2-6f90f95b35e0.png">

**Sprint 4**
<img width="844" alt="28_sprint4" src="https://user-images.githubusercontent.com/47341093/57520889-279b7700-7362-11e9-9f34-de556e39ecab.png">

**Sprint 5**
<img width="852" alt="29_sprint5" src="https://user-images.githubusercontent.com/47341093/57520890-279b7700-7362-11e9-8451-479c3bee3df3.png">

### Additional Screenshots & Documentation ###

**Google Keep Notes for each Sprint and sprint action**
<img width="1411" alt="30_googlekeep" src="https://user-images.githubusercontent.com/47341093/57520891-279b7700-7362-11e9-873b-e04230a5994a.png">

## Short Answer Questions ##

### 1. What is the need (i.e. challenge) that you will be addressing in your project? ###

There is a need for designers to learn programming and for programmers to learn design. Websites like Skillshare and Udemy allow users to study virtually but never face to face in real life. We are aiming to create a more intentional place to establish a live relationship in order to learn and share from one another.

### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving? ###

Steve Jobs once said: “It’s not just what it looks like and feels like. Design is how it works.”

Design’s role in this world never sits still. In technology it continues to be etched into the product development process. We always hear about how more designers should learn how to code. This demand for designers who can develop is just as relevant for developers who can design.

Users don’t interact directly with the developers work—they interact with what the designer creates. Developers who are involved early on in the design process will lead to a better understanding of the user. To build better products, collaboration and communication needs to take place for designers and developers.

### 3. Describe the project you will be conducting and how your App will address the needs. ###

We are addressing this need by creating an online platform through which users can meet and exchange skills. Our functional app is easy to use and simple in its purpose. Users are able to search for others in their local area with the skills they want to learn in a matter of minutes. Contacting and favouriting users can be done in seconds. The built-in mutual favouriting system helps to ease the mental and social barriers associated with meeting someone new for the first time. A chatbox messaging system allows users to engage and communicate with each other in an informal way.

### 4. Describe the network infrastructure the App may be based on. ###

Our app is deployed on Heroku, a cloud hosting platform that provides a URL through which users can access a live version of the app. Heroku uses and is compatible with the same web server we used in development and testing - Puma - which connects (routes) the HTTP requests to our controllers, through Action Controller, and relays responses to the web browser.

### 5. Identify and describe the software to be used in your App. ###

Cocobuds is built on Rails using the Ruby programming language. We deployed our app on Heroku, and used a number of gems and software that have assisted in adding functionality to our app. 

* [Devise 4.6](https://github.com/plataformatec/devise): User authentication
* [Faker 1.9](https://github.com/stympy/faker): Generating fake data to seed our database
* [Amazon Web Services - S3](https://aws.amazon.com/s3): Cloud hosting service for any uploaded images
* [Stripe 4.16](https://stripe.com/au): Processing secure paymnts
* [Bootstrap 4.3](https://getbootstrap.com/): Front-end styling
* [jQuery rails 4.3](https://github.com/rails/jquery-rails): Integrated with bootstrap for some animations
* [HTTParty 0.17.0](https://github.com/jnunemaker/httparty): Used to interact with UI Faces API for seeding profile pictures for users
* [Font Awesome SASS 5.8.1](https://github.com/FortAwesome/font-awesome-sass): Font Awesome icons that can be rendered using ruby methods in views
* [Kaminari 1.1](https://github.com/kaminari/kaminari): Handles pagination for our search results
* [Bootstrap Filestyle](https://rails-assets.org/#/components/bootstrap-filestyle): Cleans up appearance of file upload buttons using bootstrap/jQuery

### 6. Identify the database to be used in your App and provide a justification for your choice. ###

We used PostgreSQL as our database for a number of reasons. 
* It is scalable and can handle terabytes of data.
* It is designed for high volume environments.
* It is highly reliable and stable.
* It can easily merge with cloud hosting on Heroku as Heroku also uses Postgres.
* It is ACID compliant and fulfils the following properties: Atomicity, Consistency, Isolation, Durability, which means that it is quite robust and not prone to errors or failures. This also ensures consistency and integrity of data.
* It can handle multiple complex processes, such as simultaneous/concurrent writing to database tables.
* It is open source.

One downside of PostgreSQL is that it can be considerably slower than databases like MySQL and SQLite, the latter being the default database for Rails.

### 7. Identify and describe the production database setup (i.e. postgres instance). ###

We are using PostgreSQL for development/testing and Heroku Postgres for production. We configured our Rails development environment prior to building our app to use PostgreSQL over SQLite. 

### 8. Describe the architecture of your App. ###

Rails is an opinionated framework that uses convention over configuration. As such, in building this app, we followed the Model, View and Controller (or MVC) architectural pattern. This MVC paradigm allows us to separate the concerns and functionality of our app into individual, non-overlapping (but interacting) components, which facilitates a clean and efficient development, testing and maintenance process. The Model is responsible for directly interacting with the data stored in the database via Rails' Active Record. As we have different types/categories of data stored in separate tables, we employed several models that have associations to each other. The View handles the user interface, and everything that is rendered to the browser. Connecting the Model and View is the Controller which handles the logic and transfer of data/user input. It is 'brains' of the app that holds more complex functionality e.g. methods that perform sequential searches on database entries managed by the model to be passed onto the view as search results.

### 9. Explain the different high-level components (abstractions) in your App. ###

The goal of our app is to connect designers and developers with each other. At a higher level we created a system where users can perform a series of actions based around CRUD (Creating, Reading, Updating and Deleting). These actions are accomplished through HTTP requests that the web server (Puma) manages and routes to controller methods that perform the action. As discussed above, this system is designed and structured according to the MVC architectural pattern.

The first series of actions describe how users can add/edit information about themselves in a User table (accessed by the model in the database), and the presentation of that data. This is so that each can find others who are based in a convenient location and who have skills they are interested in learning. What the users see is modified, transformed or processed by the controller, passed to the view and rendered to the browser. Users can update and delete their profile and account.

The second series of actions describe the ways in which users can interact with each other. This is facilitated through associations between the User model and those related to messaging (Message and Conversation) and favouriting/following (Follow). 

### 10. Detail any third party services that your App will use. ###

We use a number of third-party services to streamline our app development, management and deployment process. AWS S3 allows us to host images (profile pictures) instead of storing files locally, which improves our potential for scalability. We used Stripe to handle our payments so that these are processed safely and securely, which means that we don't have to store sensitive user payment data in our database. We deployed our app on Heroku, a cloud platform with its own in-built server and Postgres database. To generate our user pictures in our seeded database, we used UI Faces API.

A list of all the gems/software used in building this app are detailed above. [Click here](#5-identify-and-describe-the-software-to-be-used-in-your-app) to view.

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb). ###

While our app is a two-sided marketplace for developers and designers, the features we have implemented and hence our data structure resembles a social network such as Facebook, LinkedIn, Twitter and even Tinder. Similar to our app, each of these implement ways for users to view other people's profiles/pages, add another user to some sort of collection (whether it be a collection of friends, a follower or a swipe right), and a way of communicating through messages.

### 12. Discuss the database relations to be implemented. ###

The core model of our app is the User model, as the main function of our app is to connect users to each other. As seen in our ERD, the user table in our database holds all information related to user registration (email/password) and their attributes. Minor attributes (e.g. occupation, website URL) are defined as columns in our User table, whereas the feature user attributes (Locations and Skills) are held in separate tables, associated with each user through foreign keys. We implemented a join table users_skills through which the User and Skill tables are associated.

We used separate database tables to store information related to user to user interaction (users following and talking to each other). A Conversation table defines the pair of users interacting (through foreign keys sender_id and receiver_id), and effectively acts a container for individual messages stored in the Message table. The Message table references the conversation and users via foreign keys, and holds information specific to the individual message (who sent it i.e. user_id, and whether it has been read). The last component of our ERD is the Follow table, which is effectively a self-referential/self-join table for the User model. Here, we reference foreign keys that are user ids - who someone is following (follower_id) and who is doing the following (followee_id).

The models associated with these tables interact through associations: one-to-one, one-to-many and many-to-many. These will be discussed in the next question.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other. ###

In the previous short answer question, we provided a description of the models we employed in our app and a higher-level description of the way they interact according to our designed ERD. Within this, however, are multiple associations (one-to-one, one-to-many and many-to-many) through which we gain the key functionality of our app. As the User model is the primary model of our app, we will discuss our active record associations from the 'perspective' of the User.

* User attributes: Location and Skill
  * Location (one-to-many): Each user has one location, but each location has many users. Locations are pre-defined and users can select one and only one.
  * Skill (many-to-many): Each user has many skills, and each skill has many users. This association is defined through a join table called users_skills. As such, both our User and Skill models have a has-many association to users_skills. Users can select multiple skills and have these stored in the join table.

* User interaction: Message, Conversation and Follow
- Message:
  * User to message (one-to-many): Each user has many messages, and each message belongs to a user. We define a user id for each messages which corresponds to the id of the user who sends the message.
  * Message to conversation (one-to-many): Each message belongs to a conversation, and each conversation has many messages. The conversation acts as a container for messages, but is defined only between two unique users.
  * User to conversations (one-to-many): Each conversation belongs to two individual users (defined as a sender and receiver), and each user can be engaged in multiple conversations.

* Follow (which we later renamed to display as Favourites in our views):
  * As we have a self-referential association, the model Follow acts as a join table through which we can define many-to-many follower/followee relationships. Each user has many followers (people they follow) through the join table, and each user has many followees (people who follow them) also through this join table.

### 15. Provide User stories for your App. ###

User stories are provided above under 'Design Documentation'. [Click here](#user-stories) to view.

### 16. Provide Wireframes for your App. ###

Wireframes for desktop and mobile are provided above under 'Design Documentation'. [Click here](#wireframes) to view.

### 17. Describe the way tasks are allocated and tracked in your project. ###

In our project management, tasks were allocated and tracked using Trello. Each day represented a sprint and each sprint consisted of tasks which had been discussed and chosen during our morning standups. Our sprint boards consisted of 'Todo', 'In Progress' and 'Done' lists. Each task was assigned a card where we could collaborate by commenting and attaching files. We would drag and drop each card into the list that represented its status, until all of them were inside the 'Done' list.

### 18. Discuss how Agile methodology is being implemented in your project. ###

We have implemented Agile in our project management and product development. Our product was built in sprints which allowed us to deliver work in small and manageable increments.

Most of the back-end development was done together in our group. One person would code, the other notated each step that was coded and the last person researched and followed our lecturers' notes. Each of us exchanged roles. This method helped us evaluate requirements and results for each step quickly.

### 19. Provide an overview and description of your Source control process. ###

Our group used Git and GitHub for source control. We used branches frequently when working on individual components of our app, or when working on a new feature. These features/branches included: 'user', with branches off user to work on stripe payments, forms, implementing AWS and search functionality, 'messages', and 'favourites'. Later in the process, we worked on branches that were dedicated to styling/front-end work and cleaning up code. Constant communication in person and over Slack allowed us to branch and merge at appropriate times, and that we were all kept up to date with changes as they happened. This kept merge conflicts to a minimum and made for clean and efficient development of our app.

### 20. Provide an overview and description of your Testing process. ###

Manual testing was conducted on each feature and page of the website. On every page we wanted to test all buttons, links and notifications. Each test was assigned a scenario, an expected result, actual result, status and comments. 

We attempted automated testing in Cypress, but encountered difficulties in trying to perform specific actions and this posed as a significant setback in terms of time. We decided to proceed with manual testing and attempt automated testing should time allow. Manual testing still allowed us to test for edge cases for our forms, authentication and authorisation.

**Screenshot of Testing Spreadhseet**

<img width="1371" alt="31_testing" src="https://user-images.githubusercontent.com/47341093/57523763-35a0c600-7369-11e9-8a30-f60199c2f3f0.png">

[Link to Spreadsheet](https://docs.google.com/spreadsheets/d/17HpoiCsOfrWcrLol-89Mhoy2oUFTklDDT22CqKCZNjo/edit?usp=sharing)

### 21. Discuss and analyse requirements related to information system security. ###

We have built an app that involves information transfer between the user and a database. As such, we needed to consider security vulunerabilities at several points in this pipeline: the access/retrieval of data, the transfer of data and the storage of that data.

* Unauthenticated/unauthorised access: The identity of users should be authenticated so that their identity is known. This limits what the information the user is authorised to access, and what actions they can perform. In our case, users should only be able to view listings of users and search for users if they are signed up and logged in. Users should not be authorised to view other people's conversations and messages, or be authorised to edit or delete other people's profiles. 

* Storage and access of sensitive information: Users' passwords should be encrypted. Users should only be able to retrieve forgotten passwords using an email associated with that password. Users' payment details should be encrypted and ideally stored offsite. 

* SQL injection: User inputs should be sanitised and validated to prevent malicious insertion of code that can be used to retrieve or tamper with data. 

* Cross Site Request Forgery (CSRF): HTTP requests made on the app should be defensible against users triggering unintended and potentially malicious actions.

The ways in which we implemented (or attempted to implement) these security requirements is detailed in the next question.

### 22. Discuss methods you will use to protect information and data. ###

* Unauthenticated/unauthorised access:
  * We used Devise for user authentication and secure access to the site's main features.
  * Using Devise's helper `current_user`, we wrote our own custom authorisation methods (authorize_user) in our users and messages controllers to prevent unauthorised access to sensitive message data, and unauthorised editing/deleting of user profiles.

* Storage and access of sensitive information:
  * For user passwords, we relied on Devise's inbuilt encryption (BCrypt). As such, no unencrypted passwords are stored in our database.
  * All our payments are handled by Stripe so that no sensitive payment information is kept in our database. Stripe encrypts all the card numbers and holds its decryption keys on separate machines. Stripe also forces HTTPS for secure connections.
  * Ideally, we would have liked to add additional protection to message data stored in our database, however encryption and decryption of these data was not possible within the scope of this project.

* SQL injection:
  * We only performed basic sanitisation of our user input data. We were unable to implement user validation within the allowed time despite multiple attempts at using callbacks and conditionals in validation statements or helper methods. Difficulty arose because we created a 3-step form for writing to a single entry/row in a User table (step 1: sign up, step 2: payment check, step 3: profile information). We researched ways of performing this for future work, e.g. using the gem [Wicked](https://github.com/schneems/wicked).
  * As we are using Rails' Object Relational Mapper (ORM) ActiveRecord, there is some in built protection against SQL injection as we don't write SQL queries explicitly. However, care is needed even when making database calls. For example, we used calls of the form `User.where(name: name)` and `User.where(["name = ?", "#{params[:name]}"])` rather than `User.where("name = '#{params[:name]'")` which is vulnerable to SQL injection. 

* Cross Site Request Forgery (CSRF):
  * We used the Rails form_for helper method for our forms which automatically generates and returns a CSRF token as a hidden field. The token is stored in the session as a random string.
  * Rails also has an in-built method `csrf_meta_tag` which is called in the head of the global application view file `application.html.erb`. This verifies that requests coming into the server are from users that are logged in.

We also deployed to Heroku which enforces SSL encryption for customer connections to postgres databases. We ensured that https is used for all requests by using `config.force_ssl = true` in the production file `config/environments/production.rb`. 

### 23. Research what your legal obligations are in relation to handling user data. ###

In accordance with the Australian Privacy Act, our legal obligations in relation to handling user data include:

- Disclosing how the user's personal information is being collected, how it will be used and who it will be disclosed to.
- Giving the user have the option of not identifying him/herself, or allowing them to use a pseudonym in certain circumstances.
- Giving the user access to their personal information
- Giving the user the option of not receiving unwanted direct marketing
- Correcting a user's personal information if it is incorrect.
- Allowing the user to make a complaint about an entity covered by the Privacy Act, if they consider that we have mishandled their personal information.
- Notifying users of data breaches where users' personal information is lost or stolen, and/or if the database storing the users' information is hacked.