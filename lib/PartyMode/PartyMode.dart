import 'package:flutter/material.dart';
//import 'package:truthordare/TorDBoilerPlate/TorDBoilerPlate.dart';

String task = "Select Truth or Dare";
int i = 0;

List<String> Truth = [
  'Truth comming soon 1?',
  'Truth comming soon 2?',
  'Truth comming soon 3?',
  'Truth comming soon 4?',
];
List<String> Dare = [
  'Dare comming soon 1!',
  'Dare comming soon 2!',
  'Dare comming soon 3!',
];
 
class PartyModeScreen extends StatefulWidget {
  const PartyModeScreen({Key? key}) : super(key: key);
  
  @override
  State<PartyModeScreen> createState() => _PartyModeScreen();
}

class _PartyModeScreen extends State<PartyModeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back to Topics?'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(task, style: const TextStyle(fontSize: 25)),
            //color: Colors.grey,
            width: 100,
            height: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              GestureDetector(
                onTap: () {
                  
                  if (i >= (Truth.length - 1)){
                    i = 0;
                    task = Truth[i];
                    setState(() {});
                  }
                  else {
                    i += 1;
                    task = Truth[i];
                    setState(() {});
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text('Truth', style: TextStyle(fontSize: 25)),
                  ),
                  transform: Matrix4.rotationZ(0.05),
                  height: 90,
                  width: 140,
                ),
              ),

              GestureDetector(
                onTap: () {
                  if (i >= (Dare.length - 1)){
                    i = 0;
                    task = Dare[i];
                    setState(() {});
                  }
                  else {
                    i += 1;
                    task = Dare[i];
                    setState(() {});
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text('Dare', style: TextStyle(fontSize: 25)),
                  ),
                  transform: Matrix4.rotationZ(0.05),
                  height: 90,
                  width: 140,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}