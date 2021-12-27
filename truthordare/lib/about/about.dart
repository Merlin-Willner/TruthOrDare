import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Center(
                  child: Text('Why Truth or Dare???',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ),
              Container(
                child: Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: RichText(
                        text: 
                          TextSpan(
                            //text: 'Hello',
                            style: Theme.of(context).textTheme.bodyText2,
                            children: const <TextSpan>[
                            TextSpan(
                                text: "\nWell...\n",
                                style: TextStyle(color: Colors.blue)),
                            TextSpan(text: "That Story starts way back in the beginning of 2021, before I even knew about "),
                            TextSpan(
                                text: "Harvard's CS50",
                                style: TextStyle(color: Colors.blue)),
                            TextSpan(
                                text: " introduction to computer science course.\n\n"),
                            TextSpan(
                                text: "I had this tradition, with two of my friends, that everytime we met, we played some kind"
                                           " of game like 'Mäxxle', 'Never have i ever' and obviously:\n\n"),
                            TextSpan(
                                text: "Truth or Dare",
                                style: TextStyle(color: Colors.blue, fontSize: 25)),
                            TextSpan(
                                text: "\n\nWe tried out one app after another and had to find out, that most of these apps have a "                               
                                      "fairly small amount of interessting questions and tasks, if you don't want to pay.\n\n"
                                      "It sounds kind of stupid, considering I knew absolutely nothing about programming "
                                      "or computers, but at that time I thought: \nIf someone out there is earning money with"
                                      " these kind of simple apps, \nwhat am I able to do when I develop greater apps?\n"
                                      "\nWhat am I able to do when I implement more features?\n\nBetter tasks and questions?\n\n\n"
                                      "I think I don't need to tell you that I didn't reach that goal yet XD\n\n"
                                      "To be totally honast I am not even close.\n\nDuring the course there have always been"
                                      " times where things were confusing and absolutely overwhelming(Tideman), \nbut at least there"
                                      " have been some lectures and notes to look up the information and push through the"
                                      " problem sets.\n\n"
                                      "Now with this Final Project things went a little different.\n\n"
                                      "-I needed to install VS-Code and lern how to use it.\n"
                                      "-Git and Github was completely new.\n"
                                      "-I tried out WSL2 and Ubuntu.\n"
                                      "-Dart was also pretty much new.\n"
                                      "-Flutter even more...\n"
                                      "-And now with some Elements from Firebase, things didn't get less confusing.\n\n"
                                      "But even though I didnt archieve what I wanted yet, I think I can be proud of the progress that I have made,\n"
                                      "and from now on continue my work on this app and many other in the future upcomming programming challenges.\n\n"
                                      ),
                            TextSpan(
                                text: "I am Merlin and this was CS50.\n\n",
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      )
                      //"Well...\n"
                      //"That Story starts way back in the beginning of 2021, before I even knew about Harvard's CS50 introduction to computer science course."
                      //"I had this tradition, with two of my friends, that everytime we met, we played some kind of games like 'Mäxxle', 'Never have i ever' and obviously:"
                      //"Truth or Dare"
                      //"We tried out one app after another and had to find out, that most of these apps have a fairly small amount of interessting questions and tasks, if you don't want to pay."
                      //"It sounds kind of stupid, considering I knew absolutely nothing about programming or computers, but at that time I thought: If someone out there is earning money with these kind of simple apps, what am I able to do when I develop greater apps, what am I able to do when I implement more features, better tasks and questions?"
                      ),
                ),
              ),
            ],
          ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}


//child: Center(child: Text('Well...')),
//                  const Center(child: Text("That Story starts way back in the beginning of 2021, before I even knew about Harvard's CS50 introduction to computer science course.")),
//                  const Center(child: Text("I had this tradition, with two of my friends, that everytime we met, we played some kind of games like 'Mäxxle', 'Never have i ever' and obviously: ")),
//                  const Center(child: Text("Truth or Dare")),
//                  const Center(child: Text("We tried out one app after another and had to find out, that most of these apps have a fairly small amount of interessting questions and tasks, if you don't want to pay.")),
//                  const Center(child: Text("It sounds kind of stupid, considering I knew absolutely nothing about programming or computers, but at that time I thought: If someone out there is earning money with these kind of simple apps, what am I able to do when I develop greater apps, what am I able to do when I implement more features, better tasks and questions?")),