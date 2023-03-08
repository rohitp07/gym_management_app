import 'dart:io';
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/login_screen.dart';
import 'package:gym222/screens/admin_screens/schedule_admin.dart';

class admin_home extends StatefulWidget {
  String phone;
  admin_home(this.phone);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<admin_home> {
  final User? user = FirebaseAuth.instance.currentUser;
  var userName;
  var phone;
  readData() async {
    // var collection = FirebaseFirestore.instance.doc('userdata/');
    var collection = FirebaseFirestore.instance.collection('Admin');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        userName = data?['name'];
        phone = data?['phone'];
      });
      // <-- The value you want to retrieve.
      // print('DATA PROFILE: ${user?.phoneNumber}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                child: Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 150,
                        child: new CircleAvatar(
                          backgroundImage: new AssetImage('assets/Logo.png'),
                          radius: 150.0,
                        ),
                      ),
                      new Container(
                        height: 100,
                        width: 200,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10.0, bottom: 0),
                                child: Text('Welcome $userName!',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19.0,
                                        letterSpacing: 1.5)),
                              ),
                              new Container(
                                margin: EdgeInsets.only(top: 3.0, bottom: 0),
                                child: Text("Good Morning!",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 19.0,
                                        letterSpacing: 1.5)),
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // frame362Ri2 (957:10558)
              margin: EdgeInsets.fromLTRB(24, 0, 27, 30),
              width: double.infinity,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame364jyc (957:10563)
                    width: 50,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame3655Xg (I957:10563;950:10268)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 1.5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff61417e),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '06',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // studentvHQ (I957:10563;950:10178)
                          child: Text(
                            'Sports',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    // frame365RV4 (957:10559)
                    width: 50,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame365yWa (I957:10559;950:10268)
                          margin: EdgeInsets.fromLTRB(1, 0, 2, 1.5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff61417e),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '10',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // studente6v (I957:10559;950:10178)
                          child: Text(
                            'Student',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    // frame361yQ6 (957:10560)
                    width: 50,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame365Wev (I957:10560;950:10268)
                          margin: EdgeInsets.fromLTRB(0.5, 0, 0.5, 1.5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff61417e),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '06',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // studentPCv (I957:10560;950:10178)
                          child: Text(
                            'Players',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    // frame363hzJ (957:10561)
                    width: 51,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame3653oG (I957:10561;950:10268)
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 1.5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff61417e),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '02',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // student842 (I957:10561;950:10178)
                          child: Text(
                            'Incharge',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    // frame362wXG (957:10562)
                    width: 51,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame3656f4 (I957:10562;950:10268)
                          margin: EdgeInsets.fromLTRB(1, 0, 1, 1.5),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff61417e),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '03',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          // studentaaE (I957:10562;950:10178)
                          child: Text(
                            'Coaches',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              height: 2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 528,
              width: 400,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 540,
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) =>
                                //           StudentPersonalDetails(phone)),
                                // );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.wallet_outlined,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Payment'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Schedule_Admin(phone)),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.event_note_sharp,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Schedule'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.sports_soccer,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Sports'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 540,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.people,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Members'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.note,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('News'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 156,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                  left: 17,
                                  right: 17,
                                  bottom: 15,
                                ),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.manage_accounts,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Core Member'),
                                    ],
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF62417E),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: GestureDetector(
                  child: SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.signOut();
                      } catch (e) {
                        print(e);
                      }
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Color(0xFF63447E), fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFF2CB41),
                    )),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
