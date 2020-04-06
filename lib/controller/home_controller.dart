import 'package:flutter/material.dart';
import '../views/login.dart';

class HomeController {
  void _loginScreen(BuildContext context) {
    Navigator.push(context, 
    MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
