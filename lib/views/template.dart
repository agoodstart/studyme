import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
// import 'package:flutter_webrtc/webrtc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: _login,
          child: const Text(
            'Sign in',
            style: TextStyle(fontSize: 20)
            ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          child: const Text(
            'Sign up',
            style: TextStyle(fontSize: 20)
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(
            height: 200,
            width: 200),
          child: _buildColumn(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.amber[600],
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 3.0,
                spreadRadius: 0.0,
                offset: Offset(
                  0.0,
                  1.5
                )
              )
            ]
          ),
        )
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

