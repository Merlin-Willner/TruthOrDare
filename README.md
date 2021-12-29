First of all a huge thanks to everyone from the CS50 stuff, who made all of this possible.                                   
Without you I may not have even started this whole Journey.                                                        
***You literlly changed my life...***

### But now lets go on with the reason why I chose to make this Truth or Dare App as my Final Project:
Basically I had a tradition with some of my friends, that everytime we met, we played some kind of game like 'Mäxxle', 'Never have I ever' and obviosly:

**_Truth or Dare_**

There is more than just that, but that is also described inside the app on the 'About' Page.

The Idea was to make the best Party-Game-App available on the market with multiple games, a messanger and different Events.
But as discribed on the official Final Project Page:
> "In the world of software, most everything takes longer to implement than you expect. And so it’s not uncommon to accomplish less in a fixed amount of time than you hope."

Furthermore this question occurred:

> "What might you consider to be a good outcome for your project? A better outcome? The best outcome?"

The best outcome would have been to make the best app available out there.
#### But let's be realistically:                                    
That probably is not the case when you are limited to only 2 Month, don't know the language, the framework, git & github and the ide.

So I think the outcome that I have right now is somewhere on the better end of good.
At least considering where I started.

### What I have now is
- a Truth or Dare App that has a Loginpage with Google Signin and a Guest Signin.

- a Topics Page, where you can choose between a 'Civilized mode' and a 'Party mode'

- an About Page, where I kind of describe my motivation and how this journey went.
   In addition there are two links:                                                 
    - one to Harvards CS50 Page and                                                          
    - one to my Instagram account.                                                     

- a Profile Page, with a signout button and another link to my instagram for some user feedback


### Of course I didn't get there without any source of information, therefore at some points my code may seem familiar with code from:
- fireship.io's flutter-firebase course,                                                                                                              
- flutters documentation and video series,                                                                                            
- and some other sources like for example the URL-Links that I found on Stackoverflow and adapted to my needs 

### To make things a little bit shorter:                                                                 
- The idea, the logic of the usage, the Design of the Pages (every Page you actually see inside the app) and most of the navigation are made by myself. 
- The Google login, the logic behind the login and the Design of the folders are mostly copied from fireship or the official docs.                     


## Lastly lets quickly go over some of the files what they do and where they come from:                                             

#### main.dart:                                                                                            
   - Entry point of my application
   - Basically some boiler plate code from Flutterfire and Fireship to make sure the Login works as expected and make sure there is a connection                between the client side app and the cloud

#### pubspec.yaml:                                                                          
   - added all of the dependencies that I needed for my google sign in, my url launcher 
   and firestore (which will be used in the future as the app gets more features)
              
#### google-services.json:                                                                     
   - this file was automatically created by Firebase, when I added the app to Firebase
   contains all of my Fireship credentials

#### build.gradle & build.gradle:                                                                               
   - Copied the code from the instructions on Firebase
   - And after some errors and some modifications now it doesn't throw errors around.
   - ***This (in combination with the pubspec.yaml file) was basically the hardest part of my app, because even though I had the fireship course and the official docs, I somehow went from one error to another without understanding what the error messenges ment.***
   
#### auth.dart, home.dart, login.dart:
   - handel the Login, are mostly from fireship but modified in the design

#### shared directory:
   - uses a barrel pattern design with shared.dart ==> you only have to user one import for multiple files
   - contains a basic error, loading and navigation bar from fireship, that I modified for my usage 

#### routes.dart:                                   
   - contains all the routing that the app needs in order to go from one to another page
   
#### theme.dart:
   - contains some Themes that I have used on different pages in the app, in order to make things more consistent


#### And now to the pages we actually see in the app


#### topics.dart:                                                                                                               
   - lets the user select one of two Gamemodes.
   - Civilized mode will be for getting to know someone, that you are not so comfortable with yet or for users, who just want to have some less intimate        tasks and questions.
   
   - Party mode will get more tasks and questions next year, when I can meet my friends again and play and party a little bit. The idea behind Partymode is      to get to know someone or a group of people even more for the ones who are more comfortable with deep talk and bold tasks.
   
   - When clicked on one of the tho buttons your get to:
   
#### CivilizedMode.dart & PartyMode.dart:                                                                                                   
   - That's where the game is beeing played.                                                                                                  
   - On the bottom are two buttons, when clicked a Truth or a Dare pop up.                                                                
   - One litte detail is the iteration on the truth's and dare's is done by one single int i, so that there is a little bit of randomness in the order of        the Questions and Tasks.
   - To go back the user can just tap on the top Navigation Bar.

#### about.dart:                                                                                             
   - On this page I discribe how I came to the game 'Truth or Dare' and how my journey in this course was.
   - There are also two links one to Harvards CS50 Website and one to my Instagram.
   
#### profile.dart:                                                                                                              
   - On this page I basically ask for some feedback with another kind of link to my Instagram
   and a button to signout from the app.

   
 
