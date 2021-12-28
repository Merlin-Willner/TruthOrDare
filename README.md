First of all a huge thanks to everyone from the CS50 stuff, who made all of this even possible.
Without you I may not have have started this whole Journey.
You literlly changed my life...

But now lets go on with the reason why I chose to make this Truth or Dare App as my Final Project:
Basically I had a tradition with some of my friends, that everytime we met, we played some kind of game like 'Mäxxle', 'Never have I ever' and obviosly:

Truth or Dare

There is more than just that but that is also described inside the app on the 'About' Page.

The Idea was to make the best Party-Game-App available on the market with multiple games, a messanger and different Events.
But as discribed on the official Final Project Page:
"In the world of software, most everything takes longer to implement than you expect. And so it’s not uncommon to accomplish less in a fixed amount of time than you hope."
Furthermore this question occurred:
What might you consider to be a good outcome for your project? A better outcome? The best outcome?

The best outcome would have been to make the best app available out there.
But let's be realistically: 
That probably is not the case when you are limited to only 2 Month, don't know the language, the framework, git & github and the ide.

So I think the outcome that I have right now is somewhere on the better end of good.
At least considering where I started.


-What I have now is a Truth or Dare App that has a Loginpage with Google Signin and a Guest Signin.

-A Topics Page, where you can choose between a 'civilized mode' and a 'Party mode'

-An About Page, where I kind of describe my motivation and how this journey went.
   In addition there are two links: 
     one to Harvards CS50 Page and 
     one to my Instagram account.

-A Profile Page, with a signout button and another link to my instagram for some user feedback


Of course I didn't get there without any source of information, therefore at some points my code may seem familiar with code from:
-fireship.io's flutter-firebase course,
-flutters documentation and video series,
-and some things like for example the URL-Links that I found on Stackoverflow and adapted to my needs
But the idea, the logic, the Design of the Pages and most of the Navigation was made by myself.


Lastly lets quickly go over each file and what they do:

main.dart: 
   Entry point of my application
   Basically some boiler plate code from Flutterfire and Fireship to make sure the Login works as expected and make sure there is a connetion                  between the client side app and the cloud

pubspec.yaml: 
   added all of the dependencies that I needed for my google sign in, my url launcher 
   and firestore (which will be used in the future as the app gets more features)
              
google-services.json: 
   this file was automatically created by Firebase, when I added the app to Firebase
   contains all of my Fireship credentials

build.gradle & build.gradle:
   Copied the code from the instructions on Firebase
   And after some errors and some modifications now it doesn't throw errors around.
   This was basically the hardest part of my app, because even though I had the fireship course and the official docs, I went from one error to another        without understanding what the error messenges ment.

