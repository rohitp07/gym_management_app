import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../other_details.dart';

// import 'package:gymkhana_app/screens/forget_pass_screens/forget_pass..dart';
// import 'package:gymkhana_app/datas/data.dart';
//
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:gymkhana_app/screens/login_screens2.dart';
// import 'package:gymkhana_app/screens/register_screens/register.dart';
// import 'package:gymkhana_app/screens/student_login_screens/student_home.dart';

class PersonalDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<PersonalDetails> {
  final User? user = FirebaseAuth.instance.currentUser;

  var userName;
  var email;
  var phone;
  List subjectData = [];

  readData() async {
    var collection = FirebaseFirestore.instance.collection('userdata');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        userName = data?['name'];
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
            backgroundImage:
                new AssetImage('assets/games/${subjectData[i]}.jpeg'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(children: <Widget>[
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Color(0xFFC4C4C4),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Profile Settings',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFEFB7),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            // Padding(
            //     padding: const EdgeInsets.only(top: 30.0),
            //     child: Center(
            //       child: Container(
            //         width: 150,
            //         height: 150,
            // child: Row(
            //     mainAxisAlignment: MainAxisAlignment.start,
            // child: Container(
            //   width: 250,
            //   height: 250,
            //   child: CircleAvatar(
            //     backgroundColor: Color(0xFFFFEFB7),
            //     backgroundImage: AssetImage('assets/Logo.png'),
            //     radius: 200.0,
            // child: new CircleAvatar(
            //   backgroundImage:
            //       new AssetImage('assets/Logo.png'),
            //   radius: 150.0,
            // ),
            //   ),
            // )
            //]
            //       )
            //      )
            // ]),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 200,
                    child: Image.asset('assets/Logo.png')),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              '$userName',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),
              ),
            ),
            SizedBox(height: 25),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Icon(
            //       Icons.person_add_alt,
            //       size: 25,
            //       color: Color(0xFFC4C4C4),
            //     ),
            //     Text(
            //       'Personal Details',
            //       style: TextStyle(
            //         fontSize: 10.0,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xFFFFEFB7),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Icon(
            //       Icons.more_horiz,
            //       size: 25,
            //       color: Color(0xFFC4C4C4),
            //     ),
            //     Text(
            //       'Other Details',
            //       style: TextStyle(
            //         fontSize: 10.0,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xFFFFEFB7),
            //       ),
            //     ),
            //   ],
            // ),

            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 45, right: 5, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF62417E),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          // spreadRadius: 1,
                          blurRadius: 1.5,
                          offset: Offset(0, 1.5),
                        ),
                        BoxShadow(
                          color: Color(0xFF62417E),
                          // spreadRadius: 1,
                          //blurRadius: 5,
                          offset: Offset(-2, 0),
                        ),
                        BoxShadow(
                          color: Color(0xFF62417E),
                          // spreadRadius: 1,
                          //blurRadius: 5,
                          offset: Offset(2, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.person_add_alt,
                              size: 24, color: Colors.white),
                          padding: const EdgeInsets.all(12),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFF62417E),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12))),
                          child: Text(
                            "Personal Details",
                            style: TextStyle(
                                // fontSize: 28.0,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xFFFFEFB7)),
                          ),
                          padding: const EdgeInsets.all(12),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                width: 7,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5, right: 16, bottom: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFF62417E),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF62417E),
                          //spreadRadius: 1,
                          blurRadius: 1.5,
                          offset: Offset(0, 1.5),
                        ),
                        BoxShadow(
                          color: Color(0xFF62417E),
                          // spreadRadius: 1,
                          //blurRadius: 5,
                          offset: Offset(-2, 0),
                        ),
                        BoxShadow(
                          color: Color(0xFF62417E),
                          // spreadRadius: 1,
                          //blurRadius: 5,
                          offset: Offset(2, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Icon(Icons.more_horiz,
                              size: 24, color: Colors.white),
                          padding: const EdgeInsets.all(12),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtherDetails()));
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFF62417E),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12))),
                            child: Text(
                              "Other Details",
                              style: TextStyle(
                                // fontSize: 28.0,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xFFFFEFB7),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                          ),
                        )
                      ],
                    ),
                  )),
            ]),

            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),

              child: Container(
                // alignment: Alignment.center,
                // margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: 'NAME',
                    //hintText: "NAME",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                ///margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "ADDRESS",
                    // hintText: "ADDRESS",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
                // child: reusableTextField(
                //     "Enter Your email", Icons.create_outlined, false),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "DATE OF BIRTH",
                    //hintText: "DATE OF BIRTH",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "MOBILE NUMBER",
                    // hintText: "MOBILE NUMBER",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "PARENT'S MOBILE NUMBER",
                    // hintText: "PARENT MOBILE NUMBER",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "AADHAR NUMBER",
                    // hintText: "AADHAR",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "EMAIL",
                    //hintText: "EMAIL",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "SCHOOL/COLLEGE",
                    //hintText: "SCHOOL/COLLEGE",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),

                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                //margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "SELECTED SPORTS",
                    //hintText: "SELECTED SPORTS",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 44,
              width: 312,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtherDetails()),
                    );
                  },
                  child: Text(
                    'Save & Next',
                    style: TextStyle(
                      color: Color(0xFF674882),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF2CB41),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
          ]),
        ),
      ),
    );
  }
}
