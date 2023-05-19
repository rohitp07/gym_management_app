import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/coach_screens/coach_profile.dart';
import 'package:gym222/screens/news.dart';
import 'package:gym222/screens/news/newsmembers.dart';
import 'package:gym222/screens/payment.dart';
import 'package:gym222/screens/schedule_members.dart';

import '../login_screen.dart';

class Coach_home extends StatefulWidget {
  String phone;
  Coach_home(this.phone);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Coach_home> {
  final User? user = FirebaseAuth.instance.currentUser;

  var userName;
  var email;
  var phone;
  List subjectData = [];

  readData() async {
    // var collection = FirebaseFirestore.instance.doc('userdata/');
    var collection = FirebaseFirestore.instance.collection('Coach');
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
        email = data?['email'];
        subjectData = data?['selectedsports'];
      });
      buildSportsList();
      // <-- The value you want to retrieve.
      // print('DATA PROFILE: ${user?.phoneNumber}');
    }
  }

  List<Widget> widgetList = [];
  buildSportsList() {
    for (int i = 0; i < subjectData.length; i++) {
      subjectData[i];
      print('Game ${subjectData[i]}');
      widgetList.add(
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.green,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage:
                new AssetImage('assets/games/${subjectData[i]}.png'),
            radius: 20.0,
          ),
        ),
      );
    }
    setState(() {
      widgetList = widgetList;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
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
                  left: 0,
                  right: 20,
                  bottom: 20,
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
              height: 140,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 0, left: 15),
                    child: Text("Your Sports",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            letterSpacing: 1.5)),
                  ),
                  Container(
                    height: 74,
                    width: 400,
                    margin: EdgeInsets.only(top: 10.0, bottom: 0, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: widgetList,
                      // [
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage:
                      //           new AssetImage('assets/games/badminton.jpg'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage: new AssetImage('assets/Logo.png'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage:
                      //           new AssetImage('assets/games/badminton.jpg'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage: new AssetImage('assets/Logo.png'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage:
                      //           new AssetImage('assets/games/badminton.jpg'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      //   CircleAvatar(
                      //     radius: 25,
                      //     backgroundColor: Colors.green,
                      //     child: CircleAvatar(
                      //       backgroundImage: new AssetImage('assets/Logo.png'),
                      //       radius: 20.0,
                      //     ),
                      //   ),
                      // ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 360,
              width: 400,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 360,
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 160,
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
                                          CoachPersonalDetails(phone)),
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
                                        Icons.man,
                                        color: Color(0xFFFFEFB7),
                                        size: 100,
                                      ),
                                      const Text('Profile'),
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
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsMembers()),
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
                                        Icons.newspaper,
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
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 360,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10.0, bottom: 10),
                          height: 160,
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
                                          Schedule_Members(phone)),
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
                          height: 160,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => payment()),
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
                                        Icons.wallet,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
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
