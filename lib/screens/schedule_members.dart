import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Schedule_Members extends StatefulWidget {
  String phone;
  Schedule_Members(this.phone);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Schedule_Members> {
  final User? user = FirebaseAuth.instance.currentUser;
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
  bool isLoading = false;

  reassignData() async {
    setState(() {
      isLoading = true;
    });
    var collection = FirebaseFirestore.instance.collection('schedule');
    var docSnapshot = await collection.doc('SCHEDULE').get();
    var data = docSnapshot.data();
    // print('&&&&&&&&&&&&&&&&&&&&&&@@@@@@@@@@@@@@@@@#######################');
    // print(docSnapshot.data()!['Badminton on Weekday Morning'].runtimeType);
    // print('&&&&&&&&&&&&&&&&&&&&&&@@@@@@@@@@@@@@@@@#######################');
    badmintonWeekdayMorning = data!['Badminton on Weekday Morning'] as bool;
    badmintonWeekdayEvening = data!['Badminton on Weekday Evening'] as bool;
    badmintonWeekendMorning = data!['Badminton on Weekend Morning'] as bool;
    badmintonWeekendEvening = data!['Badminton on Weekend Evening'] as bool;
    tabletennisWeekdayMorning = data!['TableTennis on Weekday Morning'] as bool;
    tabletennisWeekdayEvening = data!['TableTennis on Weekday Evening'] as bool;
    tabletennisWeekendMorning = data!['TableTennis on Weekend Morning'] as bool;
    tabletennisWeekendEvening = data!['TableTennis on Weekend Evening'] as bool;
    cyclingWeekdayMorning = data!['Cycling on Weekday Morning'] as bool;
    cyclingWeekdayEvening = data!['Cycling on Weekday Evening'] as bool;
    cyclingWeekendMorning = data!['Cycling on Weekend Morning'] as bool;
    cyclingWeekendEvening = data!['Cycling on Weekend Evening'] as bool;
    tennisWeekdayMorning = data!['Tennis on Weekday Morning'] as bool;
    tennisWeekdayEvening = data!['Tennis on Weekday Evening'] as bool;
    tennisWeekendMorning = data!['Tennis on Weekend Morning'] as bool;
    tennisWeekendEvening = data!['Tennis on Weekend Evening'] as bool;
    footballWeekdayMorning = data!['Football on Weekday Morning'] as bool;
    footballWeekdayEvening = data!['Football on Weekday Evening'] as bool;
    footballWeekendMorning = data!['Football on Weekend Morning'] as bool;
    footballWeekendEvening = data!['Football on Weekend Evening'] as bool;
    chessWeekdayMorning = data!['Chess on Weekday Morning'] as bool;
    chessWeekdayEvening = data!['Chess on Weekday Evening'] as bool;
    chessWeekendMorning = data!['Chess on Weekend Morning'] as bool;
    chessWeekendEvening = data!['Chess on Weekend Evening'] as bool;
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // readData();
    reassignData();
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
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
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
                            children: [
                              TableRow(
                                  decoration: BoxDecoration(color: Colors.grey),
                                  children: [
                                    Text(" ",
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("Mon-Fri",
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text(" ",
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text("Sat-Sun",
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    Text(" ",
                                        textScaleFactor: 1.5,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
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
                                decoration:
                                    BoxDecoration(color: Colors.grey[200]),
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
                                    // badmintonWeekdayMorning == false
                                    //     ? Icon(Icons.check_box_outline_blank)
                                    //     : Icon(Icons.check_box),
                                    onChanged: (bool? value) {
                                      // setState(() {
                                      //   badmintonWeekdayMorning = value!;
                                      // });
                                      // badmintonWeekdayMorning = value;
                                    },
                                  ),
                                  Checkbox(
                                    value: badmintonWeekdayEvening,
                                    activeColor: Color(0xFF63447E),
                                    onChanged: (bool? value) {
                                      // setState(() {
                                      //   badmintonWeekdayEvening = value!;
                                      // });
                                      // badmintonWeekdayEvening = value;
                                    },
                                  ),
                                  Checkbox(
                                    value: badmintonWeekendMorning,
                                    activeColor: Color(0xFF63447E),
                                    onChanged: (bool? value) {
                                      // setState(() {
                                      //   badmintonWeekendMorning = value!;
                                      // });
                                      // badmintonWeekendMorning = value;
                                    },
                                  ),
                                  Checkbox(
                                    value: badmintonWeekendEvening,
                                    activeColor: Color(0xFF63447E),
                                    onChanged: (bool? value) {
                                      // setState(() {
                                      //   badmintonWeekendEvening = value!;
                                      // });
                                      // badmintonWeekendEvening = value;
                                    },
                                  ),
                                ],
                              ),
                              TableRow(
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
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
                                        // setState(() {
                                        //   tabletennisWeekdayMorning = value!;
                                        // });
                                        // tabletennisWeekdayMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tabletennisWeekdayEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tabletennisWeekdayEvening = value!;
                                        // });
                                        // tabletennisWeekdayEvening = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tabletennisWeekendMorning,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tabletennisWeekendMorning = value!;
                                        // });
                                        // tabletennisWeekendMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tabletennisWeekendEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tabletennisWeekendEvening = value!;
                                        // });
                                        // tabletennisWeekendEvening = value;
                                      },
                                    ),
                                  ]),
                              TableRow(
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
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
                                        // setState(() {
                                        //   cyclingWeekdayMorning = value!;
                                        // });
                                        // cyclingWeekdayMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: cyclingWeekdayEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   cyclingWeekdayEvening = value!;
                                        // });
                                        // cyclingWeekdayEvening = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: cyclingWeekendMorning,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   cyclingWeekendMorning = value!;
                                        // });
                                        // cyclingWeekendMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: cyclingWeekendEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   cyclingWeekendEvening = value!;
                                        // });
                                        // cyclingWeekendEvening = value;
                                      },
                                    ),
                                  ]),
                              TableRow(
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
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
                                        // setState(() {
                                        //   tennisWeekdayMorning = value!;
                                        // });
                                        // tennisWeekdayMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tennisWeekdayEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tennisWeekdayEvening = value!;
                                        // });
                                        // tennisWeekdayEvening = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tennisWeekendMorning,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tennisWeekendMorning = value!;
                                        // });
                                        // tennisWeekendMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: tennisWeekendEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   tennisWeekendEvening = value!;
                                        // });
                                        // tennisWeekendEvening = value;
                                      },
                                    ),
                                  ]),
                              TableRow(
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
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
                                        // setState(() {
                                        //   footballWeekdayMorning = value!;
                                        // });
                                        // footballWeekdayMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: footballWeekdayEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   footballWeekdayEvening = value!;
                                        // });
                                        // footballWeekdayEvening = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: footballWeekendMorning,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   footballWeekendMorning = value!;
                                        // });
                                        // footballWeekendMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: footballWeekendEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   footballWeekendEvening = value!;
                                        // });
                                        // footballWeekendEvening = value;
                                      },
                                    ),
                                  ]),
                              TableRow(
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
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
                                        // setState(() {
                                        //   chessWeekdayMorning = value!;
                                        // });
                                        // chessWeekdayMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: chessWeekdayEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   chessWeekdayEvening = value!;
                                        // });
                                        // chessWeekdayEvening = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: chessWeekendMorning,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   chessWeekendMorning = value!;
                                        // });
                                        // chessWeekendMorning = value;
                                      },
                                    ),
                                    Checkbox(
                                      value: chessWeekendEvening,
                                      activeColor: Color(0xFF63447E),
                                      onChanged: (bool? value) {
                                        // setState(() {
                                        //   chessWeekendEvening = value!;
                                        // });
                                        // chessWeekendEvening = value;
                                      },
                                    ),
                                  ]),
                            ],
                          ),
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