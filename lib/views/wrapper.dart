import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyme/model/user.dart';
import 'package:studyme/views/authenticate.dart';
import 'package:studyme/views/dashboard.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if(user == null) {
      return Authenticate();
    } else {
      return Dashboard();
    }
  }
}