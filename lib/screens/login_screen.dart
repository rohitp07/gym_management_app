import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:gym222/screens/register_screens/otp.dart';
import 'package:gym222/screens/register_screens/register.dart';
import 'package:gym222/screens/reusable_widgets/reusable_textfield.dart';
import 'package:gym222/screens/student_screens/student_home.dart';
import '../datas/data.dart';
import 'forget_pass_screens/forget_pass.dart';
import 'otp2.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<LoginScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: Center(
                child: Container(
                    width: 320,
                    height: 210,
                    child: Image.asset('assets/Logo.png')),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),
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
                      width: 18,
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
                items: item
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_circle_outlined,
                                size: 16,
                                color: Color(0xFFC4C4C4),
                              ),
                              SizedBox(
                                width: 18,
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
                        builder: (context) =>
                            OTPScreen1(_controller.text, selectedValue!)));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Color(0xFF63447E), fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF2CB41),
                  )),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => student_registration()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFFF2CB41),
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
