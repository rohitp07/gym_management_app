import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';

import '../reusable_widgets/reusable_textfield.dart';

class profile_page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<profile_page1> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63447E),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFEFB7)),
        ),
        title: Text(
          "Profile Setting",
          style: TextStyle(color: Color(0xFFFFEFB7)),
        ),
      ),
    );
  }
}
