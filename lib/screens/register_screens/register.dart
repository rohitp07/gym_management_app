import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'otp.dart';

class student_registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

final List<String> items = [
  'Student Member',
  'Player Member',
  'Coach',
  'Game Incharge',
  'Admin'
];
String? selectedValue;

String dropdown_value = "Select Member Type";

class StartState extends State<student_registration> {
  GlobalKey<FormState> _key = new GlobalKey();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _controller = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  get child => null;
  bool? val1 = false;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 45, bottom: 0),
                child: Center(
                  child: Container(
                      width: 320,
                      height: 210,
                      child: Image.asset('assets/Logo.png')),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Registration',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFEFB7),
                ),
              ),

              SizedBox(height: 30),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 25,
                        color: Color(0xFFC4C4C4),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'User Type',
                          style: TextStyle(
                            color: Color(0xFFC4C4C4),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.account_circle_outlined,
                                  size: 25,
                                  color: Color(0xFFC4C4C4),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  item,
                                  style: TextStyle(
                                    color: selectedValue == item
                                        ? Color(0xFFC4C4C4)
                                        : Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  selectedItemHighlightColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_outlined,
                  ),
                  iconSize: 25,
                  iconEnabledColor: Color(0xFFC4C4C4),
                  iconDisabledColor: Color(0xFFC4C4C4),
                  buttonHeight: 50,
                  dropdownFullScreen: true,
                  buttonWidth: 340,
                  buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                  buttonDecoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Color(0xFF62417E),
                    ),
                    color: Color(0xFF62417E),
                  ),
                  // buttonElevation: 2,
                  itemHeight: 50,
                  itemPadding: const EdgeInsets.only(
                      left: 15, right: 15, top: 0, bottom: 0),
                  dropdownMaxHeight: 300,
                  dropdownWidth: 300,
                  dropdownPadding: const EdgeInsets.only(
                      left: 10, right: 15, top: 0, bottom: 0),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xFFFFFFFF),
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(25, 0),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 75,
                  width: 600,
                  // alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 4, right: 4),
                  padding: EdgeInsets.only(left: 15, right: 15),

                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white.withOpacity(0.9)),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white70,
                      ),
                      labelText: "Enter your Name",
                      labelStyle: TextStyle(color: Color(0xFFC4C4C4)),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Color(0xFF62417E),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: _userNameTextController,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 2, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  margin: EdgeInsets.only(left: 4, right: 4),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 75,
                  width: 600,
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white.withOpacity(0.9)),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.call,
                        color: Colors.white70,
                      ),
                      labelText: "Phone Number",
                      labelStyle: TextStyle(color: Color(0xFFC4C4C4)),
                      filled: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      fillColor: Color(0xFF62417E),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                    ),
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    controller: _controller,
                  ),
                ),
              ),

              SizedBox(height: 40),
              // Container(
              //   height: 45,
              //   width: 312,
              //   decoration: BoxDecoration(
              //       color: Colors.black,
              //       borderRadius: BorderRadius.circular(1000)),
              //   child:ElevatedButton(

              // onPressed: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => OTPScreen(_controller.text, _emailTextController.text,_userNameTextController.text, selectedValue!)));
              // },
              //     child: Text(
              //       'Next',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ),

              // ),
              Container(
                margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 50,
                width: 600,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1000)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OTPScreen(_controller.text,
                              _userNameTextController.text, selectedValue!)));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Color(0xFF63447E), fontSize: 20),
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
