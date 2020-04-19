import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studyme/controller/auth_controller.dart';
import 'package:studyme/model/user.dart';
import 'package:studyme/views/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'StudyMe',
        theme: ThemeData(primaryColor: Colors.purple[900]),
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => Wrapper()
        }
      )
    );
  }
}

