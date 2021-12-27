import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({ Key? key }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                child: const Text('about'),
                onPressed: () => Navigator.pushNamed(context, '/about'),
              ),
            ),
            const Expanded(
              child: Text('this is topics'),
            ),
          ],
          
        ),
      ),
      
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
