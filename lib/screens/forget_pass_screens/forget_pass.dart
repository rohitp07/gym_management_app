import 'package:flutter/material.dart';

import 'OTP_ver.dart';

class Forgetpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Forgetpassword> {
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
              padding: const EdgeInsets.only(top: 50.0, bottom: 15),
              child: Center(
                child: Container(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/Logo.png')),
              ),
            ),
            Text(
              'Forget Password',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25.0, right: 25.0, top: 35, bottom: 45),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                    filled: true,
                    //<-- SEE HERE
                    fillColor: Color(0xFF62417E),
                    labelStyle: TextStyle(
                      color: Color(0xFFC4C4C4), //<-- SEE HERE
                    ),
                    hintText: 'Enter Valid 10 digit number'),
              ),
            ),
            Container(
              height: 45,
              width: 365,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => otp_veri()),
                    );
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(
                      color: Color(0xFF674882),
                      fontSize: 20.0,
                    ),
                  ),
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
