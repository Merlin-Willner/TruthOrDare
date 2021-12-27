import 'package:flutter/material.dart';
import 'package:truthordare/services/auth.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ElevatedButton(
              child: const Text('Go back to Topics'),
              onPressed: () => Navigator.pushNamed(context, '/topics'),
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
