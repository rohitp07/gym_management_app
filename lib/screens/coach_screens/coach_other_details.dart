import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/coach_screens/coach_home.dart';
import 'package:gym222/screens/coach_screens/coach_profile.dart';

class CoachOtherDetails extends StatefulWidget {
  String phone;
  CoachOtherDetails(this.phone);
  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<CoachOtherDetails> {
  final User? user = FirebaseAuth.instance.currentUser;

  var userName;
  var email;
  var phone;
  var height;
  var weight;
  var tShirtSize;
  var shoeSize;
  var bloodGroup;

  readData() async {
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
        height=data?['Height'];
        weight=data?['Weight'];
        tShirtSize=data?['T Shirt Size'];
        shoeSize=data?['Shoe Size'];
        bloodGroup=data?['Blood Group'];
      });
      // <-- The value you want to retrieve.
      // print('DATA PROFILE: ${user?.phoneNumber}');
    }
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
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController tShirt = TextEditingController();
  TextEditingController shoe = TextEditingController();
  TextEditingController bloodgrp = TextEditingController();

  Future addCoachPersonalDetails() async {
    final docUser = FirebaseFirestore.instance
        .collection('Coach')
        .doc(widget.phone.trim());

    final json = {
      'Height': heightController.text,
      'Weight': weightController.text,
      'T Shirt Size': tShirt.text,
      'Shoe Size': shoe.text,
      'Blood Group': bloodgrp.text,
    };
    await docUser.set(json, SetOptions(merge: true));
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
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 45, right: 5, bottom: 16),
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
                          child: Icon(Icons.person_add_alt,
                              size: 24, color: Colors.white),
                          padding: const EdgeInsets.all(12),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CoachPersonalDetails(phone)));
                            },
                        child: Container(
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
                        )),
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
                          child: Icon(Icons.more_horiz,
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
                              "Other Details",
                              style: TextStyle(
                                // fontSize: 28.0,
                                // fontWeight: FontWeight.bold,
                                color: Color(0xFFFFEFB7),
                              ),
                            ),
                            padding: const EdgeInsets.all(12),
                          ),
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
                  controller: heightController..text=height??"",
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    // suffixIcon:
                    //     Icon(Icons.create_outlined, color: Colors.white),
                    labelText: 'HEIGHT:',
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
            //SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
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
                  controller: weightController..text=weight??"",
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "WEIGHT:",
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
            //SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
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
                  controller: bloodgrp..text=bloodGroup??"",
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    // suffixIcon:
                    //     Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "BLOOD GR:",
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
                  controller: tShirt..text=tShirtSize??"",
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "T-SHIRT SIZE:",
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
            //SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 0),
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
                  controller: shoe..text=shoeSize??"",
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    // suffixIcon:
                    //     Icon(Icons.create_outlined, color: Colors.white),
                    labelText: "SHOE SIZE:",
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
                  onPressed: () async {
                    await addCoachPersonalDetails();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Coach_home(phone)),
                    );
                  },
                  child: Text(
                    'Save',
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
            SizedBox(height: 15),
          ]),
        ),
      ),
    );
  }
}
