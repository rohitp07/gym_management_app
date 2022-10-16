import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:gymkhana_app/screens/register_screens/parents_consent.dart';


class student_registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}
final List<String> items = [
  'Student Member',
  'Player Member',
  'Coach',
  'Game Incharge',
];
String? selectedValue;


String dropdown_value = "Select Member Type";
// var items = ["Student Member","Player Member","Coach","Game Incharge","Admin"];
class StartState extends State<student_registration> {
  get child => null;
  bool? val1=false;

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
              padding: const EdgeInsets.only(top: 20, bottom: 0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/Logo.png')),
              ),
            ),
            Text('Registration',

              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFFEFB7),

              ),),
            SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                decoration: InputDecoration(

                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,

                  labelText: 'Your Name',
                  filled: true,
                  //<-- SEE HERE

                  fillColor: Color(0xFF62417E),
                  labelStyle: TextStyle(
                    color: Color(0xFFC4C4C4), //<-- SEE HERE
                  ),
                  hintText: 'Enter valid email id as abc@gmail.com',
                  hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(width: 1, color: Color(0xFFFFEFB7)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.call),
                  border: InputBorder.none,
                  labelText: 'Mobile Number',
                  filled: true,
                  //<-- SEE HERE
                  fillColor: Color(0xFF62417E),
                  labelStyle: TextStyle(
                    color: Color(0xFFC4C4C4), //<-- SEE HERE
                  ),
                  hintText: 'Enter 10 digits',
                  hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(width: 1, color: Color(0xFFFFEFB7)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: InputBorder.none,
                  labelText: 'Password',
                  filled: true,
                  //<-- SEE HERE
                  fillColor: Color(0xFF62417E),
                  labelStyle: TextStyle(
                    color: Color(0xFFC4C4C4), //<-- SEE HERE
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Color(0xFFC4C4C4),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    //<-- SEE HERE
                    borderSide: BorderSide(width: 1, color: Color(0xFFFFEFB7)),

                  ),
                ),
              ),
            ),
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
                        'Select Member Type',
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
                        width: 10,
                      ),
                      Text(
                        item,
                        style:  TextStyle(
                          fontSize: 14,
                          // color: Color(0xFF674882),
                          color: selectedValue==items? Colors.white : Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),

                    ],
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },

                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                ),
                iconSize: 25,
                iconEnabledColor:  Color(0xFFC4C4C4),
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
                dropdownMaxHeight: 400,
                dropdownWidth: 380,
                dropdownPadding:  const EdgeInsets.only(
                    left: 30, right: 15, top: 20, bottom: 25),
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xFFFFFFFF),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
              width: 312,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1000)),
              child:
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ParentConsent()),
                );
              }, child: Text('Save & Next',
                style: TextStyle(
                  color: Color(0xFF674882),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF2CB41),

                  )),
            ),
          ],

        ),

      ),



    );

  }
}