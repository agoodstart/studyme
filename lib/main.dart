import 'package:flutter/material.dart';
// import 'package:flutter_webrtc/webrtc.dart';
import './views/template.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyMe',
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}