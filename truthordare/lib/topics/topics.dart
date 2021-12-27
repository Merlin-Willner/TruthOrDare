import 'package:flutter/material.dart';
import 'package:truthordare/shared/bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({ Key? key }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Expanded(
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('\nGamemodes', style: Theme.of(context).textTheme.headline1,),
                ],
              ),
            //),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Text('Truth or Dare\nCivilized mode', style: Theme.of(context).textTheme.bodyText2),
                  onPressed: () => Navigator.pushNamed(context, '/about'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: Text('Truth or Dare\nParty mode', style: Theme.of(context).textTheme.bodyText2),
                  onPressed: () => Navigator.pushNamed(context, '/about'),
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
