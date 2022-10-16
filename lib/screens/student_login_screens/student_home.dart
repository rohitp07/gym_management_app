import 'package:flutter/material.dart';
import 'package:gymkhana_app/screens/forget_pass_screens/forget_pass..dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:gymkhana_app/screens/login_screens2.dart';

class Student_home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<Student_home> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),

      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 0,
          right: 20,
          bottom: 50,
        ),
        child: Container(
          height: 100,
          child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  color: Colors.red,
                  width :150,
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage('assets/Logo.png'),
                    radius:150.0,
                    ),
                ),
          Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0, bottom:0,left: 10),
                  child: Text("Name : Sam Cromer",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0)),
                ),

              ]
        ),
          ],
        ),

      ),

    ),
    );
  }
}
