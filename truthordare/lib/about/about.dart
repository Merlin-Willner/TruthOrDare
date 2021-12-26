import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('about'),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
