import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';
import 'package:url_launcher/url_launcher.dart';

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
                            children: <TextSpan>[
                            const TextSpan(
                                text: "\nWell...\n",
                                style: TextStyle(color: Colors.blue)),
                            const TextSpan(text: "That Story starts way back in the beginning of 2021, before I even knew about "),
                            TextSpan(
                                text: "Harvard's CS50",
                                style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer() ..onTap = () async {
                                  if (await canLaunch("https://pll.harvard.edu/course/cs50") == true) {
                                    launch("https://pll.harvard.edu/course/cs50");
                                  }
                                  else {
                                    print("Can't launch URL");
                                  }
                                },
                                ),
                            const TextSpan(
                                text: " introduction to computer science course.\n\n"),
                            const TextSpan(
                                text: "Basically I had a tradition with some of my friends, that everytime we met, we played some kind"
                                           " of game like 'Mäxxle', 'Never have i ever' and obviously:\n\n"),
                            const TextSpan(
                                text: "Truth or Dare",
                                style: TextStyle(color: Colors.blue, fontSize: 25)),
                            const TextSpan(
                                text: "\n\nWe tried out one app after another and had to find out, that most of these apps have a "                               
                                      "fairly small amount of interessting questions and tasks, as long as you don't pay for extra Gamemodes.\n\n"
                                      "It sounds kind of stupid considering I knew absolutely nothing about programming "
                                      "or computers at that time, but nonetheless I thought: \nIf someone out there is earning money with"
                                      " apps that are that simple, \nwhat am I able to do when I develop greater versions of these apps?\n"
                                      "\nWhat am I able to do when I implement more features?\n\nBetter tasks and questions?\n\n\n"
                                      "I think I don't need to tell you that I didn't reach that goal yet XD\n\n"
                                      "To be totally honast I am not even close...\n\n\n\nDuring CS50's course there have always been"
                                      " times where things were confusing and absolutely overwhelming(Tideman), \nbut at least there"
                                      " have been some lectures and notes to look up the information and push through the"
                                      " problem sets.\n\n"
                                      "Now with this Final Project things went a little different.\n\n"
                                      "-I needed to install VS-Code and lern how to properly use it.\n"
                                      "-Git and Github was completely new.\n"
                                      "-I tried out WSL2 and Ubuntu.\n"
                                      "-Dart was also pretty much new.\n"
                                      "-Flutter even more...\n"
                                      "-And now with some Elements from Firebase, things didn't get less confusing.\n\n"
                                      "But even though I didnt archieve what I wanted yet,\nI think I can be proud of the progress that I have made,\n"
                                      "the motivation to constantly step out of my comfort zone,\n"
                                      "and the fact that I never gave up and continued to try my best, no matter how confusing or overwhelming a concept or task seemed to be.\n\n"
                                      "If you are reading this right now and struggle at anything in programming, sport or whatever else, feel free to contact me on the link below.\n\n"
                                      
                                      ),
                            TextSpan(
                                text: "I am Merlin and this was CS50.\n\n",
                                style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer() ..onTap = () async {
                                  if (await canLaunch("https://www.instagram.com/merlin_willner/") == true) {
                                    launch("https://www.instagram.com/merlin_willner/");
                                  } 
                                  else {
                                    print("Can't launch URL");
                                  }
                                },
                            ),
                          ],
                        ),
                      )
                      
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


