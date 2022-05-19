import 'package:flutter/material.dart';


String task = "Select Truth or Dare";
int i = 0;

List<String> Truth = [
  'If you had only one wish, what would it be?',
  'Where do you come from?',
  'What are your favourite activities?',
  'What is your dream job and why?',
];
List<String> Dare = [
  'The other Players have to give you a task that is out of your comfort zone.\nDO SOMETHING BOLD!',
  'Go to the person to your right and sit on her/his lap for the rest of this round!',
  'Act for the rest of the round like an absolut asshole, you have to insult everybody!',
  'You are now the buttler for everyone! Good luck. ;)',
];
 


class CivilizedModeScreen extends StatefulWidget {
  const CivilizedModeScreen({Key? key}) : super(key: key);
  
  @override
  State<CivilizedModeScreen> createState() => _CivilizedModeScreen();
}

class _CivilizedModeScreen extends State<CivilizedModeScreen> {
  
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
                    child: Text('Truth', style: TextStyle(fontSize: 25),),
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