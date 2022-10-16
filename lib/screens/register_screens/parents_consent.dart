import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ParentConsent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<ParentConsent> {
  bool? val1 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF63447E),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Container(
                      width: 300,
                      height: 220,
                      child: Image.asset('assets/Logo.png')),
                ),
              ),
              Text(
                'Parent\'s Consent',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFEFB7),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
                child: Center(
                  child: Container(
                    child: Text(
                      'I SANJAY PATIL herebye agree with all the terms and conditions of ‘SHIRWAL ACADEMY’ A/P-Shirwal, TAL-Khandala, Dist-Satara and I am ready to send my ward to the competitions which will be held timely in future. I also give my consent that managers and coach of shirwal academy will not be held responsible for any injury or accident during the game to my ward, Thank you.',
                      style: TextStyle(
                        fontFamily: 'Inter-Regular',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFDBDBDB),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    value: val1,
                    onChanged: (bool? value) {
                      setState(() => val1 = value);
                    },
                  ),
                  Text(
                    "Agree and Continue",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFEFB7),
                    ),
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 30.0)),
              Container(
                height: 45,
                width: 312,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1000)),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Go To Payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF674882),
                        fontSize: 18.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF2CB41),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}