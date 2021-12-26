import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('profile'),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
