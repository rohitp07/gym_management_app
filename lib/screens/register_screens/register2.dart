import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym222/screens/coach_screens/coach_home.dart';
import 'package:gym222/screens/game_incharge_screens/game_incharge_home.dart';
import 'package:gym222/screens/login_screen.dart';
import 'package:gym222/screens/player_screens/player_home.dart';
import 'package:gym222/screens/student_screens/student_home.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'multi_select/sports_data_model.dart';
import 'package:gym222/screens/register_screens/multi_select/data_controller.dart';

class MultiSelectDropDownScreen extends StatefulWidget {

  String phone;
  String userName;
  String userType;
  // MultiSelectDropDownScreen({Key? key}) : super(key: key);
  MultiSelectDropDownScreen(
      this.phone, this.userName, this.userType);

  @override
  State<MultiSelectDropDownScreen> createState() =>
      _MultiSelectDropDownScreenState();
}

class _MultiSelectDropDownScreenState extends State<MultiSelectDropDownScreen> {
  var address1="";
  var dob="";
  var email = "";
  var aadhar="";
  var emergencyPhone="";
  var parentsPhone="";
  var schoolCollege="";
  var height="";
  var weight="";
  var tShirtSize="";
  var shoeSize="";
  var bloodGroup="";
  var medicalIssue="";
  final AppDataController controller = Get.put(AppDataController());
  List subjectData = [];
  Future createUser() async {
    if (widget.userType == "Student Member") {
      try {
        final docUser = FirebaseFirestore.instance
            .collection(
              widget.userType.trim(),
            )
            .doc(widget.phone.trim());
        final json = {
          'phone': widget.phone.trim(),
          'email': email,
          'name': widget.userName.trim(),
          'usertype': widget.userType.trim(),
          'selectedsports': subjectData,
          'Address': address1,
          'Date of Birth': dob,
          'Parents Mobile No.': parentsPhone,
          'Aadhar No.': aadhar,
          'school':schoolCollege,
          'Height':height,
          'Weight':weight,
          'T Shirt Size':tShirtSize,
          'Shoe Size':shoeSize,
          'Blood Group':bloodGroup,
          'Medical Issues':medicalIssue,
        };
        await docUser.set(json);
      } catch (e) {
        print(e);
      }
    };
    if (widget.userType == "Player Member") {
      try {
        final docUser = FirebaseFirestore.instance
            .collection(
              widget.userType.trim(),
            )
            .doc(widget.phone.trim());
        final json = {
          'phone': widget.phone.trim(),
          'email': email,
          'name': widget.userName.trim(),
          'usertype': widget.userType.trim(),
          'selectedsports': subjectData,
          'Address': address1,
          'Date of Birth': dob,
          'Emergency Mobile No.': emergencyPhone,
          'Aadhar No.': aadhar,
          'school':schoolCollege,
          'Height':height,
          'Weight':weight,
          'T Shirt Size':tShirtSize,
          'Shoe Size':shoeSize,
          'Blood Group':bloodGroup,
          'Medical Issues':medicalIssue,
        };
        await docUser.set(json);
      } catch (e) {
        print(e);
      }
    };
    if (widget.userType == "Coach") {
      try {
        final docUser = FirebaseFirestore.instance
            .collection(
              widget.userType.trim(),
            )
            .doc(widget.phone.trim());
        final json = {
          'phone': widget.phone.trim(),
          'email': email,
          'name': widget.userName.trim(),
          'usertype': widget.userType.trim(),
          'selectedsports': subjectData,
          'Address': address1,
          'Date of Birth': dob,
          'Height':height,
          'Weight':weight,
          'T Shirt Size':tShirtSize,
          'Shoe Size':shoeSize,
          'Blood Group':bloodGroup,
        };
        await docUser.set(json);
      } catch (e) {
        print(e);
      }
    };
    if (widget.userType == "Game Incharge") {
      try {
        final docUser = FirebaseFirestore.instance
            .collection(
              widget.userType.trim(),
            )
            .doc(widget.phone.trim());
        final json = {
          'phone': widget.phone.trim(),
          'email': email,
          'name': widget.userName.trim(),
          'usertype': widget.userType.trim(),
          'selectedsports': subjectData,
          'Address': address1,
          'Date of Birth': dob,
          'Height':height,
          'Weight':weight,
          'T Shirt Size':tShirtSize,
          'Shoe Size':shoeSize,
          'Blood Group':bloodGroup,
        };
        await docUser.set(json);
      } catch (e) {
        print(e);
      }
    };
    if (widget.userType == "Game Incharge") {
      try {
        final docUser = FirebaseFirestore.instance
            .collection(
              widget.userType.trim(),
            )
            .doc(widget.phone.trim());
        final json = {
          'phone': widget.phone.trim(),
          'email': email,
          'name': widget.userName.trim(),
          'usertype': widget.userType.trim(),
          'selectedsports': subjectData,
          'Address': address1,
          'Date of Birth': dob,
          'Height':height,
          'Weight':weight,
          'T Shirt Size':tShirtSize,
          'Shoe Size':shoeSize,
          'Blood Group':bloodGroup,
        };
        await docUser.set(json);
      } catch (e) {
        print(e);
      }
    };
  }

  Future createUserData() async {
    try {
      final docUser = FirebaseFirestore.instance
          .collection(
            'userdata',
          )
          .doc(widget.phone.trim());
      final json = {
        'phone': widget.phone.trim(),
        'email': email,
        'name': widget.userName.trim(),
        'usertype': widget.userType.trim(),
        'selectedsports': subjectData,
      };
      await docUser.set(json);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // List subjectData = [];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getSubjectData();
    });

    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      appBar: AppBar(
        backgroundColor: Color(0xFF62417E),
        centerTitle: true,
        title: const Text(
          "Select Sports",
          style: TextStyle(color: const Color(0xFFFFEFB7)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          GetBuilder<AppDataController>(builder: (controller) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: MultiSelectDialogField(
                items: controller.dropDownData,
                title: const Text(
                  "Select Sports",
                  style: TextStyle(color: Colors.black),
                ),
                selectedColor: Colors.black,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  border: Border.all(
                    color: Color(0xFFFFEFB7),
                    width: 2,
                  ),
                ),
                buttonIcon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                buttonText: const Text(
                  "Select Your Sports",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                onConfirm: (results) {
                  subjectData = [];
                  for (var i = 0; i < results.length; i++) {
                    SportsModel data = results[i] as SportsModel;
                    print(data.sportsId);
                    print(data.sportsName);
                    subjectData.add(data.sportsId);
                  }
                  print("data $subjectData");

                  //_selectedAnimals = results;
                },
              ),
            );
          }),
          SizedBox(
            height: 400,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF674882),
            ),
            child: ElevatedButton(
                onPressed: () async {
                  await createUser();
                  await createUserData();
                  if (widget.userType == 'Student Member') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Student_home(widget.phone)),
                        (route) => false);
                  }
                  if (widget.userType == 'Player Member') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Player_home(widget.phone)),
                        (route) => false);
                  }
                  if (widget.userType == 'Coach') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Coach_home(widget.phone)),
                        (route) => false);
                  }
                  if (widget.userType == 'Game Incharge') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                GameIncharge_home(widget.phone)),
                        (route) => false);
                  }
                  if (widget.userType == 'Admin') {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false);
                  }
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LoginScreen()),
                  // );
                },
                child: Text(
                  'Continue',
                  style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF2CB41),
                )),
          ),
        ],
      ),
    );
  }
}
