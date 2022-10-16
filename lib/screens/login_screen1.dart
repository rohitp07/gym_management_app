import 'package:gymkhana_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:snippet_coder_utils/list_helper.dart';
import 'package:snippet_coder_utils/multi_images_utils.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class LoginScreen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}


String? selectedValue;

class StartState extends State<LoginScreen1> {
  final List<String> item = [
    'Student Member',
    'Player Member',
    'Coach',
    'Game Incharge',
    'Admin',
  ];

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
                    height: 220,
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
            SizedBox(height: 20),

            Padding(padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                  margin: EdgeInsets.only(left: 4, right: 4),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 54,
                  width: 370,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF62417E),
                  ),
                child: DropdownButton(

                  hint: Text('User type'),
                  dropdownColor: Colors.white,

                  elevation: 5,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 30,
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue= value ;
                    });
                },
                  items: item.map((value)  {
                    return DropdownMenuItem<String>(value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ),
            ),



            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            SizedBox(height: 25),
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
            SizedBox(
              height: 10,
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