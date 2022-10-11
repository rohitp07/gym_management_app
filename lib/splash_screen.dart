import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gymkhana_app/screens/login_screen.dart';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}
class StartState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }
  startTime() async {
    // var duration = Duration(seconds: 3);
    // return new Timer(duration, loginRoute());
    // Timer.periodic(Duration(seconds: 3), (timer) { });
    Future.delayed(Duration(seconds: 5)).then((value) => loginRoute());
  }

  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }
  Widget initWidget(BuildContext context){
    return Container(
      color: Colors.white,
      child:Scaffold(
        backgroundColor: Color(0xFF63447E),
        body: Center(
          child: Image(
            image:AssetImage('assets/Logo.png'),
          ),
        ),
      ),
    );

  }
}

 
