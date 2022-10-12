import 'package:gymkhana_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:snippet_coder_utils/list_helper.dart';
import 'package:snippet_coder_utils/multi_images_utils.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
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
              padding: const EdgeInsets.only(top: 50.0),
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
            // SizedBox(height: 20),

            // Padding(

            //   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            //   padding: EdgeInsets.symmetric(horizontal: 15),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         prefixIcon: Icon(Icons.man),
            //         border: OutlineInputBorder(),
            //         labelText: 'User type',
            //         filled: true,
            //         //<-- SEE HERE
            //         fillColor: Color(0xFF62417E),
            //         labelStyle: TextStyle(
            //           color: Color(0xFFC4C4C4), //<-- SEE HERE
            //         ),
            //         hintText: 'Enter valid email id as abc@gmail.com',),
            //   ),
            // ),
            // FormHelper.dropDownWidget(
            //     context, "Select Country", this.countryId, this.countries,
            //     (onChangedVal) {
            //   this.countryId = onChangedVal;
            //   print("Selected Country: $onChangedVal");
            // }, (onValidateVal) {
            //   if (onValidateVal == null) {
            //     return 'Please Select Country';
            //   }
            //   return null;
            // },
            //     borderColor: Theme.of(context).primaryColor,
            //     borderFocusColor: Theme.of(context).primaryColor,
            //     borderRadius: 10,
            //     paddingLeft: 15,
            //     paddingRight: 15,
            //     textColor: Color(0xFFC4C4C4),
            //     hintColor: Color(0xFFC4C4C4),
            //     validationColor: Color(0xFFC4C4C4),
            //     prefixIcon: Icon(Icons.man),
            //     prefixIconColor: Color(0xFFC4C4C4),
            //     showPrefixIcon: true,
            //     optionValue: "id",
            //     optionLabel: "label"),
            SizedBox(height: 25),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 16,
                      color: Color(0xFFC4C4C4),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        'User Type',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
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
                                width: 4,
                              ),
                              Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFC4C4C4),
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
                iconSize: 14,
                iconEnabledColor: Color(0xFFC4C4C4),
                iconDisabledColor: Colors.grey,
                buttonHeight: 70,
                buttonWidth: 380,
                buttonPadding: const EdgeInsets.only(left: 15, right: 15),
                buttonDecoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Color(0xFF62417E),
                ),
                // buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 15, right: 15),
                dropdownMaxHeight: 200,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color(0xFF62417E),
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
            // DropdownButton<String>(
            //   items: list.map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            //   value: dropdownValue,
            //   icon: const Icon(Icons.arrow_downward),
            //   elevation: 16,
            //   style: const TextStyle(color: Color(0xFFC4C4C4)),
            //   onChanged: (String? value) {
            //     // This is called when the user selects an item.
            //     setState(() {
            //       dropdownValue = value!;
            //     });
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.call),
                  border: OutlineInputBorder(),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
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
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 45,
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
                          fontSize: 18,
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
                        fontSize: 18,
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
