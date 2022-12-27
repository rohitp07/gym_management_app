import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym222/screens/login_screen.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'multi_select/sports_data_model.dart';
import 'package:gym222/screens/register_screens/multi_select/data_controller.dart';

class MultiSelectDropDownScreen extends StatefulWidget {
  String email;
  String phone;
  String userName;
  String userType;
  // MultiSelectDropDownScreen({Key? key}) : super(key: key);
  MultiSelectDropDownScreen(
      this.phone, this.email, this.userName, this.userType);

  @override
  State<MultiSelectDropDownScreen> createState() =>
      _MultiSelectDropDownScreenState();
}

class _MultiSelectDropDownScreenState extends State<MultiSelectDropDownScreen> {
  final AppDataController controller = Get.put(AppDataController());
  List subjectData = [];
  Future createUser() async {
    try {
      final docUser = FirebaseFirestore.instance
          .collection('userdata')
          .doc(widget.phone.trim());
      final json = {
        'phone': widget.phone.trim(),
        'email': widget.email.trim(),
        'name': widget.userName.trim(),
        'usertype': widget.userType.trim(),
        'selectedsports': subjectData,
      };
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString('selectedsports', subjectData.toString());
      // final String userId = prefs.getString('selectedsports')!;
      // print('*****');
      // print(userId);
      // print('*****');
      await docUser.set(json);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // List subjectData = [];

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
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
                  "Select Subject",
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
                  "Select Your Subject",
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
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
