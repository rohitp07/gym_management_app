
import 'package:gymkhana_app/screens/forget_pass_screens/reset_pass.dart';

import 'package:flutter/material.dart';


class otp_veri extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<otp_veri> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0,bottom: 15),
              child: Center(
                child: Container(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/Logo.png')
                ),
              ),
            ),
            Text('OTP Verification',

              style: TextStyle(
                letterSpacing: 1,
                fontSize:30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),


              ),),
            Text('Enter the 4 digit verification code\nsend on your email',
              textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),),

            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0,top: 35, bottom: 45),

            ),
            Container(
              height: 45,
              width: 365,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child:
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => resetpass() ),
                );
              }, child: Text('Verify OTP',
                style: TextStyle(
                  color: Color(0xFF674882),
                  fontSize: 20.0,
                ),),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF2CB41),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
