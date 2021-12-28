import 'package:flutter/material.dart';
import 'package:truthordare/services/auth.dart';
import 'package:truthordare/shared/bottom_nav.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(padding: const EdgeInsets.all(20),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: RichText(
                textAlign: TextAlign.center,
                text: 
                 
                  TextSpan(
                    style: Theme.of(context).textTheme.bodyText1,
                    children: const <TextSpan>[
                      TextSpan(text: "\n\n\nAny improvements in mind?\n\n", style: TextStyle(fontSize: 30)),
                      TextSpan(text: "Any idea for a game?\n\n"),
                      TextSpan(text: "Write me on social media"),
                    ]
                  ),
                ),
            ),

            //Expanded(
            Center(
              


              child: 
                ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red, ),
                  child: Center(
                    
                    child:  Column(
                      children: const [
                     Text("merlin_willner", style: TextStyle(fontSize: 25)),
                     Text("Instagram", style: TextStyle(fontSize: 25)),]
                    ),
                  ),

                 // child: Text("merlin_willner\n Instagram", style: TextStyle(fontSize: 25)),
                  onPressed: () async {
                    const url = 'https://www.instagram.com/merlin_willner';

                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
                ),),
            


            ElevatedButton( 
              child: Text('signout', style: TextStyle(fontSize: 25)),
              onPressed: () async {
                await AuthService().signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              }
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
