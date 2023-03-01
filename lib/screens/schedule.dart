import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/game_incharge_screens/game_incharge_home.dart';

class Student_schedule extends StatefulWidget {
  String phone;
  Student_schedule(this.phone);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Student_schedule> {
  bool? badmintonWeekdayMorning = false;
  bool? badmintonWeekdayEvening = false;
  bool? badmintonWeekendMorning = false;
  bool? badmintonWeekendEvening = false;
  bool? tabletennisWeekdayMorning = false;
  bool? tabletennisWeekdayEvening = false;
  bool? tabletennisWeekendMorning = false;
  bool? tabletennisWeekendEvening = false;
  bool? cyclingWeekdayMorning = false;
  bool? cyclingWeekdayEvening = false;
  bool? cyclingWeekendMorning = false;
  bool? cyclingWeekendEvening = false;
  bool? tennisWeekdayMorning = false;
  bool? tennisWeekdayEvening = false;
  bool? tennisWeekendMorning = false;
  bool? tennisWeekendEvening = false;
  bool? footballWeekdayMorning = false;
  bool? footballWeekdayEvening = false;
  bool? footballWeekendMorning = false;
  bool? footballWeekendEvening = false;
  bool? chessWeekdayMorning = false;
  bool? chessWeekdayEvening = false;
  bool? chessWeekendMorning = false;
  bool? chessWeekendEvening = false;

  final User? user = FirebaseAuth.instance.currentUser;

  List subjectData = [];
  readData() async {
    // var collection = FirebaseFirestore.instance.doc('userdata/');
    var collection = FirebaseFirestore.instance.collection('Game Incharge');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        subjectData = data?['selectedsports'];
      });
      buildSportsList();
      // <-- The value you want to retrieve.
      // print('DATA PROFILE: ${user?.phoneNumber}');
    }
  }

  prepareSchedule() async {
    var collection = FirebaseFirestore.instance.collection('Schedule');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        badmintonWeekdayMorning = data?['badmintonWeekdayMorning'];
      });
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
    prepareSchedule();
  }

  Future addSchedule() async {
    final docUser =
        FirebaseFirestore.instance.collection('schedule').doc('7058181974');

    final json = {
      'Badminton on Weekday Morning': badmintonWeekdayMorning,
      'Badminton on Weekday Evening': badmintonWeekdayEvening,
      'Badminton on Weekend Morning': badmintonWeekendMorning,
      'Badminton on Weekend Evening': badmintonWeekdayEvening,
      'TableTennis on Weekday Morning': tabletennisWeekdayMorning,
      'TableTennis on Weekday Evening': tabletennisWeekdayEvening,
      'TableTennis on Weekend Morning': tabletennisWeekendMorning,
      'TableTennis on Weekend Evening': tabletennisWeekendEvening,
      'Cycling on Weekday Morning': cyclingWeekdayMorning,
      'Cycling on Weekday Evening': cyclingWeekdayEvening,
      'Cycling on Weekend Morning': cyclingWeekendMorning,
      'Cycling on Weekend Evening': cyclingWeekendEvening,
      'Tennis on Weekday Morning': tennisWeekdayMorning,
      'Tennis on Weekday Evening': tennisWeekdayEvening,
      'Tennis on Weekend Morning': tennisWeekendMorning,
      'Tennis on Weekend Evening': tennisWeekendEvening,
      'Football on Weekday Morning': footballWeekdayMorning,
      'Football on Weekday Evening': footballWeekdayEvening,
      'Football on Weekend Morning': footballWeekdayMorning,
      'Football on Weekend Evening': footballWeekendEvening,
      'Chess on Weekday Morning': chessWeekdayMorning,
      'Chess on Weekday Evening': chessWeekdayEvening,
      'Chess on Weekend Morning': chessWeekendMorning,
      'Chess on Weekend Evening': chessWeekendEvening,
    };
    await docUser.set(json, SetOptions(merge: true));
  }

  @override
  Widget build(BuildContext context) {
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
          "Latest Schedule",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      backgroundColor: Color(0xFF63447E),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 0,
                right: 20,
                bottom: 20,
              ),
              // child: Container(
              //   height: 100,
              //
              // ),
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
                          fontSize: 25.0,
                          letterSpacing: 1.5)),
                ),
                Container(
                  height: 74,
                  width: 400,
                  margin: EdgeInsets.only(top: 10.0, bottom: 0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: widgetList,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            margin: EdgeInsets.only(top: 10.0, bottom: 0, left: 5),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      border: TableBorder.all(
                        color: Colors.grey,
                      ),
                      // textDirection: TextDirection.rtl,
                      // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                      // border:TableBorder.all(width: 2.0,color: Colors.red),
                      children: [
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Text(" ",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("Mon-Fri",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(" ",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("Sat-Sun",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(" ",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey),
                            children: [
                              Text(" ",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center),
                              Text("Morn",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center),
                              Text("Eve",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center),
                              Text("Morn",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center),
                              Text("Eve",
                                  textScaleFactor: 1.5,
                                  textAlign: TextAlign.center),
                            ]),
                        TableRow(
                          decoration: BoxDecoration(color: Colors.grey[200]),
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/games/1.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                            // Text("Badminton",
                            //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                            Checkbox(
                              value: badmintonWeekdayMorning,
                              activeColor: Color(0xFF63447E),
                              onChanged: (bool? value) {
                                setState(() {
                                  badmintonWeekdayMorning = value!;
                                });
                                badmintonWeekdayMorning = value;
                              },
                            ),
                            Checkbox(
                              value: badmintonWeekdayEvening,
                              activeColor: Color(0xFF63447E),
                              onChanged: (bool? value) {
                                setState(() {
                                  badmintonWeekdayEvening = value!;
                                });
                                badmintonWeekdayEvening = value;
                              },
                            ),
                            Checkbox(
                              value: badmintonWeekendMorning,
                              activeColor: Color(0xFF63447E),
                              onChanged: (bool? value) {
                                setState(() {
                                  badmintonWeekendMorning = value!;
                                });
                                badmintonWeekendMorning = value;
                              },
                            ),
                            Checkbox(
                              value: badmintonWeekendEvening,
                              activeColor: Color(0xFF63447E),
                              onChanged: (bool? value) {
                                setState(() {
                                  badmintonWeekendEvening = value!;
                                });
                                badmintonWeekendEvening = value;
                              },
                            ),
                          ],
                        ),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/games/2.png"),
                              ),
                              // Text("Table Tennis",
                              //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                              Checkbox(
                                value: tabletennisWeekdayMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tabletennisWeekdayMorning = value!;
                                  });
                                  tabletennisWeekdayMorning = value;
                                },
                              ),
                              Checkbox(
                                value: tabletennisWeekdayEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tabletennisWeekdayEvening = value!;
                                  });
                                  tabletennisWeekdayEvening = value;
                                },
                              ),
                              Checkbox(
                                value: tabletennisWeekendMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tabletennisWeekendMorning = value!;
                                  });
                                  tabletennisWeekendMorning = value;
                                },
                              ),
                              Checkbox(
                                value: tabletennisWeekendEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tabletennisWeekendEvening = value!;
                                  });
                                  tabletennisWeekendEvening = value;
                                },
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/games/3.png"),
                              ),

                              // Text("Cycling",
                              //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                              Checkbox(
                                value: cyclingWeekdayMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    cyclingWeekdayMorning = value!;
                                  });
                                  cyclingWeekdayMorning = value;
                                },
                              ),
                              Checkbox(
                                value: cyclingWeekdayEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    cyclingWeekdayEvening = value!;
                                  });
                                  cyclingWeekdayEvening = value;
                                },
                              ),
                              Checkbox(
                                value: cyclingWeekendMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    cyclingWeekendMorning = value!;
                                  });
                                  cyclingWeekendMorning = value;
                                },
                              ),
                              Checkbox(
                                value: cyclingWeekendEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    cyclingWeekendEvening = value!;
                                  });
                                  cyclingWeekendEvening = value;
                                },
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/games/4.png"),
                              ),
                              // Text("Tennis",
                              //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                              Checkbox(
                                value: tennisWeekdayMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tennisWeekdayMorning = value!;
                                  });
                                  tennisWeekdayMorning = value;
                                },
                              ),
                              Checkbox(
                                value: tennisWeekdayEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tennisWeekdayEvening = value!;
                                  });
                                  tennisWeekdayEvening = value;
                                },
                              ),
                              Checkbox(
                                value: tennisWeekendMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tennisWeekendMorning = value!;
                                  });
                                  tennisWeekendMorning = value;
                                },
                              ),
                              Checkbox(
                                value: tennisWeekendEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    tennisWeekendEvening = value!;
                                  });
                                  tennisWeekendEvening = value;
                                },
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/games/5.png",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain),
                              ),
                              // Text("Football",
                              //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                              Checkbox(
                                value: footballWeekdayMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    footballWeekdayMorning = value!;
                                  });
                                  footballWeekdayMorning = value;
                                },
                              ),
                              Checkbox(
                                value: footballWeekdayEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    footballWeekdayEvening = value!;
                                  });
                                  footballWeekdayEvening = value;
                                },
                              ),
                              Checkbox(
                                value: footballWeekendMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    footballWeekendMorning = value!;
                                  });
                                  footballWeekendMorning = value;
                                },
                              ),
                              Checkbox(
                                value: footballWeekendEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    footballWeekendEvening = value!;
                                  });
                                  footballWeekendEvening = value;
                                },
                              ),
                            ]),
                        TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset("assets/games/6.png",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain),
                              ),
                              // Text("Chess",
                              //     textScaleFactor: 1.5, textAlign: TextAlign.center),
                              Checkbox(
                                value: chessWeekdayMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    chessWeekdayMorning = value!;
                                  });
                                  chessWeekdayMorning = value;
                                },
                              ),
                              Checkbox(
                                value: chessWeekdayEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    chessWeekdayEvening = value!;
                                  });
                                  chessWeekdayEvening = value;
                                },
                              ),
                              Checkbox(
                                value: chessWeekendMorning,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    chessWeekendMorning = value!;
                                  });
                                  chessWeekendMorning = value;
                                },
                              ),
                              Checkbox(
                                value: chessWeekendEvening,
                                activeColor: Color(0xFF63447E),
                                onChanged: (bool? value) {
                                  setState(() {
                                    chessWeekendEvening = value!;
                                  });
                                  chessWeekendEvening = value;
                                },
                              ),
                            ]),
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
                            await addSchedule();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(
                                color: Color(0xFF63447E), fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF2CB41),
                          )),
                    )),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   // TODO: implement build
  //   throw UnimplementedError();
  // }
// }