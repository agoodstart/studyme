import 'package:flutter/material.dart';
import 'package:studyme/views/components/login_card.dart';
import 'package:studyme/views/components/pagetitle.dart';
import 'package:studyme/views/components/signup_card.dart';

enum AuthMode { LOGIN, SINGUP }

class Authenticate extends StatefulWidget {

  @override
  AuthenticateState createState() => AuthenticateState();
}

class AuthenticateState extends State<Authenticate> {
  double screenHeight;
  AuthMode authMode = AuthMode.LOGIN;

  @override
  Widget build(BuildContext context) {

    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            lowerHalf(context),
            upperHalf(context),
            authMode == AuthMode.LOGIN
              ? SignIn(screenHeight: screenHeight, changeAuthMode: changeAuthMode)
              : SignUp(screenHeight: screenHeight, changeAuthMode: changeAuthMode),
            PageTitle().pagetitle()
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget upperHalf(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: screenHeight / 2,
        color: Colors.pink[400],
      ),
    );
  }

  Widget lowerHalf(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight / 2,
        color: Color(0xFFECF0F3),
      )
    );
  }

  void changeAuthMode(AuthMode changedAuth) {
    setState(() {
      authMode = changedAuth;
    });
  }
}

