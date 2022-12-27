
import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

final List<String> items = [
  'Student Member',
  'Player Member',
  'Coach',
  'Game Incharge',
  'Admin',
];
String? selectedValue;

class StartState extends State<LoginScreen> {
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
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 200,
                    child: Image.asset('assets/Logo.png')),
              ),
            ),
            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),
              ),
            ),
            SizedBox(height: 25),
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
                          fontSize: 14,
                          fontStyle: FontStyle.normal,
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
                        size: 16,
                        color: Color(0xFFC4C4C4),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        item,
                        style:  TextStyle(
                          fontSize: 14,
                          color: selectedValue==item? Colors.white : Colors.black,
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
                buttonHeight: 65,
                buttonWidth: 380,
                buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                buttonDecoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Color(0xFF62417E),
                  ),
                  color: Color(0xFF62417E),
                ),
                // buttonElevation: 2,
                itemHeight: 65,
                itemPadding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 0),
                dropdownMaxHeight: 300,
                dropdownWidth: 380,
                dropdownPadding: const EdgeInsets.only(
                    left: 50, right: 15, top: 0, bottom: 10),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xFFFFFFFF),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),

            ),





            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // alignment: Alignment.center,
                margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      size: 25,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
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
                margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 54,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(50),
                  color: Color(0xFF62417E),
                ),
                child: TextField(
                  cursorColor: Color(0xFFC4C4C4),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: 25,
                      color: Color(0xFFC4C4C4),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color(0xFFC4C4C4),
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 44,
              width: 312,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Forget password?');
                  },
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      )),
                  style: ButtonStyle(),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Color(0xFFF2CB41),
                        fontSize: 12,
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