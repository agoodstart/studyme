import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studyme/views/wrapper.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StudyMe',
      theme: ThemeData(primaryColor: Colors.purple[900]),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Wrapper()
      }
    );
  }
}

