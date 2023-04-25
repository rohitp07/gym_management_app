import 'package:flutter/material.dart';

class player_profile1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<player_profile1> {
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
          icon: Icon(Icons.arrow_back,
              color: Color(0xFFFFEFB7)),
        ),
        title: Text(
          "Profile Setting",
          style: TextStyle(color: Color(0xFFFFEFB7)),
        ),
      ),
    );

  }
}