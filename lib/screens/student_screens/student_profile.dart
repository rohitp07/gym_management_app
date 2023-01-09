import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';
import 'student_other_details.dart';

class StudentPersonalDetails extends StatefulWidget {
  String phone;
  StudentPersonalDetails(this.phone);
  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<StudentPersonalDetails> {
  final User? user = FirebaseAuth.instance.currentUser;

  var userName;
  var address1;
  var dob;
  var email;
  var phone;
  var aadhar;
  var parentsPhone;
  var schoolCollege;
  List subjectData = [];

  readData() async {
    var collection = FirebaseFirestore.instance.collection('Student Member');
    print(
        'DATA PROFILE: ${user?.phoneNumber.toString().replaceFirst('+91', '')}');
    var docSnapshot = await collection
        .doc(user?.phoneNumber.toString().replaceFirst('+91', ''))
        .get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      setState(() {
        userName = data?['name'];
        address1 = data?['Address'];
        dob = data?['Date of Birth'];
        email = data?['email'];
        phone = data?['phone'];
        aadhar = data?['Aadhar No.'];
        parentsPhone = data?['Parents Mobile No.'];
        schoolCollege = data?['school'];
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

  TextEditingController name = TextEditingController();
  TextEditingController emailid = TextEditingController();
  TextEditingController phoneNo = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController dateOfBirth = TextEditingController();
  TextEditingController parentsMobileNo = TextEditingController();
  TextEditingController aadharNo = TextEditingController();
  TextEditingController school = TextEditingController();
  TextEditingController selectedSports = TextEditingController();

  Future addStudentMemberPersonalDetails() async {
    final docUser = FirebaseFirestore.instance
        .collection('Student Member')
        .doc(widget.phone.trim());

    final json = {
      'Address': address.text,
      'Date of Birth': dateOfBirth.text,
      'Parents Mobile No.': parentsMobileNo.text,
      'Aadhar No.': aadharNo.text,
      'school': school.text,
    };
    await docUser.set(json, SetOptions(merge: true));
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: address1 != null ||
              dob != null ||
              aadhar != null ||
              parentsPhone != null ||
              schoolCollege != null
          ? SingleChildScrollView(
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
                        padding:
                            EdgeInsets.only(left: 45, right: 5, bottom: 16),
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
                        padding:
                            EdgeInsets.only(left: 5, right: 16, bottom: 16),
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
                                          builder: (context) =>
                                              StudentOtherDetails(phone)));
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
                        controller: name..text = userName,
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
                        controller: address..text = address1 ?? "",
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
                        controller: dateOfBirth..text = dob ?? "",
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
                        controller: phoneNo..text = phone,
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
                        controller: parentsMobileNo..text = parentsPhone ?? "",
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
                        controller: aadharNo..text = aadhar ?? "",
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
                        controller: emailid..text = email ?? "",
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
                        controller: school..text = schoolCollege ?? "",
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
                    child: TitledContainer(
                      titleColor: Color(0xFFC4C4C4),
                      title: 'SELECTED SPORTS',
                      fontSize: 15.0,
                      backgroundColor: Color(0xFF62417E),
                      child: Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 11),
                        height: 54,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF62417E),
                        ),
                        child: Row(
                          children: widgetList,
                        ),
                      ),
                      // alignment: Alignment.center,
                      //margin: EdgeInsets.only(left: 4, right: 4),
                      // child: TextField(
                      //   // controller: selectedSports..text = subjectData,
                      //   style: TextStyle(color: Colors.white),
                      //   cursorColor: Color(0xFFC4C4C4),
                      //   decoration: InputDecoration(
                      //     suffixIcon:
                      //         Icon(Icons.create_outlined, color: Colors.white),
                      //     labelText: "SELECTED SPORTS",
                      //     //hintText: "SELECTED SPORTS",
                      //     labelStyle: TextStyle(
                      //       fontSize: 15,
                      //       color: Color(0xFFC4C4C4),
                      //     ),
                      //     hintStyle: TextStyle(
                      //       fontSize: 12,
                      // color: Color(0xFFC4C4C4),
                      //     ),
                      //     enabledBorder: InputBorder.none,
                      //     focusedBorder: InputBorder.none,
                      //   ),
                      // ),
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
                          await addStudentMemberPersonalDetails();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentOtherDetails(phone)),
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
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}
