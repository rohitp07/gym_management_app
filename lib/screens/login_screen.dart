import 'package:gymkhana_app/screens/forget_pass_screens/forget_pass..dart';
import 'package:gymkhana_app/splash_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
@override
State<StatefulWidget> createState() => StartState();
}

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
            Text('Welcome Back!',

              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFEFB7),

              ),),
            SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.man),
                    border: OutlineInputBorder(),
                    labelText: 'User type',
                    filled: true,
                    //<-- SEE HERE
                    fillColor: Color(0xFF62417E),
                    labelStyle: TextStyle(
                      color: Color(0xFFC4C4C4), //<-- SEE HERE
                    ),
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
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
                    hintText: 'Enter 10 digits'),
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
                    hintText: 'Enter secure password'),
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
              ElevatedButton(onPressed: () {}, child: Text('Login',
                style: TextStyle(
                  color: Color(0xFF674882),
                  fontSize: 18.0,
                ),),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Forgetpassword()),
                      );
                    },
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

