import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: Center(
        child: Text(
          "Login Screen",
          style: TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold
          ),
        ),
      )
    );
  }
}