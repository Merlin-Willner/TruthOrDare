import 'package:flutter/material.dart';
import 'package:truthordare/services/auth.dart';
import 'package:truthordare/shared/bottom_nav.dart';

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
                      TextSpan(text: "\n\n\nAny improvements in mind?\n\n"),
                      TextSpan(text: "Any idea for a game?"),
                      TextSpan(text: "Write me on social media"),
                    ]
                  ),
                ),
            ),
            ElevatedButton( 
              child: const Text('signout'),
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
