import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.space_dashboard_rounded,
            size: 30,
          ),
          label: 'Topics',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.query_stats_rounded,
            size: 30,
          ),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.emoji_people_sharp,
            size: 30,
          ),
          label: 'Profile',
        ),
      ],
      fixedColor: Colors.deepPurple[200],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            // do nothing
            break;
          case 1:
            Navigator.pushNamed(context, '/about');
            break;
          case 2:
            Navigator.pushNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
