import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gymkhana_app/splash_screen.dart';


void main() => runApp(const app());

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}