# Project 2: IDRA Hub

###By Sukhyun (Paul) Baik

##About IDRA Hub

IDRA is a full CRUD application site where Droners post any drone related product, whether it is fully built drones or parts, on the site. User will be able to create their own account with unique password in order to login.  Only one user can delete or update his or her own post.  

##User Story

For Trello Board go to [this link](https://trello.com/b/qT39dMLx/wdi-project-2-idra-hub)

##Wireframes

![Home page](https://github.com/neonagx/Project-2-IDRA-Hub/blob/master/assets/Wireframe1.png)
![Main page](https://github.com/neonagx/Project-2-IDRA-Hub/blob/master/assets/Wireframe2.png)
![Posted page](https://github.com/neonagx/Project-2-IDRA-Hub/blob/master/assets/Wireframe3.png)
![Rank page](https://github.com/neonagx/Project-2-IDRA-Hub/blob/master/assets/Wireframe4.png)
![ERD](https://github.com/neonagx/Project-2-IDRA-Hub/blob/master/assets/ERD.png)

##Technologies Used
1. Ruby
2. Ruby on Rails
3. JQuery
4. HTML
5. CSS
6. Javascript
7. Bootstrap

##Approach Taken
In order for the core site to be fully functional, I generated Ruby on Rails with postgresql and skipping the test first.  There I created new database by using the command rake db:create.  Then I would setup models, routes, controllers, views respectfully.  All routes must have Create, Read, Update, Destroy (CRUD) verbs or using resources.  Once site is fully functional with CRUD, I would get into the design using Bootstrap.  In order for the site to be deployable, I used heroku after commmiting and pushing through github first.  

##Installation Instructions
Go to https://github.com/neonagx/Project-2-IDRA-Hub and click clone or download button on the right side to download the repo or on your terminal, type git clone with the link git@github.com:neonagx/Project-2-IDRA-Hub.git to a repo. Go into the cloned file on the terminal and type bundle install.  Once bundle install is complete, type rake db:create to create new database.  Then type rake db:migrate to migrate all data to the file.  In order for the site to work you have to start the local server by typing in rails s on the console.  Once server is up and running, go to your web browser and type in localhost:3000 and you should be in at the home page.  In order for you to edit the page, type in your text editor command to open all the rails feature.  Enjoy!

##Unsolved Problem
The main site does not respond well to certain sizes.  Have not fully completed the design animation.

##MVP
1. Have a fully functional CRUD application site for IDRA Hub Buy/Sell feature
2. Render Bootstrap Style for IDRA Hub
3. User can create their own account and login
