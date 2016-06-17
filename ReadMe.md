#Mudita

 _"When we can be happy of the joys that other beings feel it is called Mudita"_

[Mudita](https://the-mudita.herokuapp.com/)<p>
![alt text](./MuditaHome.png)
###Introduction
Allowing you to share links to products you think would suit a friend. <p> Mudia is the "I saw this and thought of you.." moments stored in one place. <p>
_"When we can be happy of the joys that other beings feel.."_

A Rails application with PostgreSQL that brings a social aspect to shopping online. 

An individual five-day project that allows you to share links to products you think would suit a friend.


###Functionality: 

  - Browse online stores, see something.<br>
  - Log in to Mudita, fill in the recommendation form using the url.<br>
  - Your friend will recieve a screenshot of the product in their inbox.<br>
  - They can shop, comment or add a picture of them wearing your recommendation - if they like it.<br>
  - All comments and photos can only be seen by the sender and receiver of the recommendation. 
![alt text](./MuditaInbox.png)
![alt text](./MuditaInbox2.png)

###Technologies used: 
A _Ruby on Rails_ application that uses the _Devise gem_ to setup an authentication process to register, login and log out users (creating and destroying sessions). Created a _PostgreSQL database_ performing SQL queries, to list and register users, create recommendations and add comments. Managed the creation of tables and alterations using migrations to add functionality such as user profile images and comments to recommendation feeds. The _Carrierwave gem_ allows users to upload a profile picture, with a default image loaded if the user chooses not to, and style pictures in the feed too. The main functionality is due to the Gastly gem that takes screenshots of web pages using built-in _Phantom.js_ and _MiniMagick_ to scrape the inputted URL. The application customises templates from _Foundation_ styled using _SCSS_ and _SASS_ with _JavaScript_ and _jQuery_ to add style features too.

###Planning tools used:
Balsamiq was used to produce a wireframe<p>
![alt text](./RosieWireFrame.png)
Trello was used to manage tasks and work flow<p>
![alt text](./Trello.png)
