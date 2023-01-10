import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/coach_screens/coach_home.dart';
import 'package:gym222/screens/game_incharge_screens/game_incharge_home.dart';
import 'package:gym222/screens/login_screen.dart';
import 'package:gym222/screens/player_screens/player_home.dart';
import 'package:gym222/screens/student_screens/student_home.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  final User? user = FirebaseAuth.instance.currentUser;

  var phone;
  var usertype;

  readData() async {
    // var collection = FirebaseFirestore.instance.doc('userdata/');
    var collection = FirebaseFirestore.instance.collection('userdata');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        phone = data?['phone'];
        usertype = data?['usertype'];
      });
      // <-- The value you want to retrieve.
      // print('DATA PROFILE: ${user?.phoneNumber}');
    }
  }
  @override
  void initState() {
    readData();
    super.initState();
    startTime();
  }

  startTime() async {
    // var duration = Duration(seconds: 3);
    // return new Timer(duration, loginRoute());
    // Timer.periodic(Duration(seconds: 3), (timer) { });
    Future.delayed(Duration(seconds: 5)).then((value) => loginRoute());
  }

  // loginRoute() {
  //   user?.phoneNumber == null
  //       ? Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => LoginScreen()))
  //       : Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => Student_home()));
  // }
  loginRoute() {
    if (user?.phoneNumber == null) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }
    if (usertype == "Student Member") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Student_home(phone)));
    }
    if (usertype == "Coach") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Coach_home(phone)));
    }
    if (usertype == "Game Incharge") {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => GameIncharge_home(phone)));
    }
    if (usertype == "Player Member") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Player_home(phone)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Color(0xFF63447E),
        body: Center(
          child: Image(
            image: AssetImage('assets/Logo.png'),
          ),
        ),
      ),
    );
  }
}