import 'package:flutter/material.dart';
import 'package:studyme/controller/auth_controller.dart';
import 'package:studyme/views/authenticate.dart';

class SignIn extends StatefulWidget {
  final double screenHeight;
  final AuthMode authMode;

  SignIn({Key key, this.screenHeight, this.authMode}) : super(key : key);

  @override
  _SignInState createState() => _SignInState(screenHeight, authMode);
}

class _SignInState extends State<SignIn> {
  double screenHeight;
  AuthMode authMode;
  _SignInState(this.screenHeight, this.authMode);
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: screenHeight / 4),
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Your Email", hasFloatingPlaceholder: true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Password", hasFloatingPlaceholder: true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Forgot Password ?"),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      FlatButton(
                        child: Text("Login"),
                        color: Color(0xFF4B9DFE),
                        textColor: Colors.white,
                        padding: EdgeInsets.only(
                            left: 38, right: 38, top: 15, bottom: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPressed: () async{
                          dynamic result = await _auth.signInAnom();
                          if(result == null) {
                            print('error signing in');
                          } else {
                            print('signed in');
                            print(result.uid);
                          }
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "Don't have an account ?",
              style: TextStyle(color: Colors.grey),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  authMode = AuthMode.SINGUP;
                });

              },
              textColor: Colors.black87,
              child: Text("Create Account"),
            )
          ],
        )
      ],
    );
  }
}