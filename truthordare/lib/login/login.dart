import 'package:flutter/material.dart';
import 'package:truthordare/services/auth.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
                child: Text("Truth or Dare",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50
                  )
                ),      
            ),
            const Center(
                child: Text("Merlin's Final Project",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35
                  )
                ),  
                
            ),
            LoginButton(
              text: 'Sign in with Google',
              icon: Icons.sledding_outlined,
              color: Colors.blue,
              loginMethod: AuthService().googleLogin,
            ),
            Flexible(
              child: LoginButton(
                icon: Icons.person_outline,
                text: 'Continue as Guest',
                loginMethod: AuthService().anonLogin,
                color: Colors.deepPurple,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.color,
      required this.loginMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          backgroundColor: color,
        ),
        onPressed: () => loginMethod(),
        label: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
