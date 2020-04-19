import 'package:flutter/material.dart';

class PageTitle {
  Widget pagetitle() {
    return Container(
      margin: EdgeInsets.only(top: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.school,
            size: 48,
            color: Colors.white,
          ),
          Text(
            "StudyMe",
            style: TextStyle(
                fontSize: 34, color: Colors.white, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}