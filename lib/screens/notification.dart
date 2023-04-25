import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/news.dart';

//
// enum ImageSourceType { gallery, camera }

class Notifications extends StatefulWidget {
  // void _handleURLButtonPress(BuildContext context, var type) {
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  // }

  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Icon(
                  //   Icons.arrow_back,
                  //   size: 25,
                  //   color: Color(0xFFC4C4C4),
                  // ),
                  IconButton(
                      color: Color(0xFFC4C4C4),
                      iconSize: 25,
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'News And Notifications',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFEFB7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                    padding: EdgeInsets.only(left: 45, right: 16, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF62417E),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
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
                      //
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.newspaper,
                                size: 30, color: Colors.white),
                            padding: const EdgeInsets.all(12),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => News()));
                            },
                            child: Container(
                              width: 128,
                              decoration: BoxDecoration(
                                color: Color(0xFF62417E),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  "News",
                                  style: TextStyle(
                                    color: Color(0xFFFFEFB7),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              color: Color(0xFF62417E),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 7,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5, right: 16, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFF62417E),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.notifications_active,
                                size: 30, color: Colors.white),
                            padding: const EdgeInsets.all(12),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkResponse(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Notifications()),
                              //   );
                              // },
                              splashColor: Colors.blue,
                              highlightColor: Colors.blue.withOpacity(0.5),
                              child: SizedBox(
                                width: 120,
                                height: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF62417E),
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Notifications",
                                      style: TextStyle(
                                        color: Color(0xFFFFEFB7),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ]),
              Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 520,
                          decoration: BoxDecoration(
                            color: Color(0xFF62417E),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 10,
                                right: 10,
                                top: 50,
                                child: Container(
                                  width: 312,
                                  height: 837.5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // news3sh9 (991:13294)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 24),
                                        padding: EdgeInsets.fromLTRB(
                                            20, 18.34, 8, 18.33),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff61417e),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              width: 30,
                                              height: 50,
                                              child: Icon(
                                                Icons
                                                    .notifications_none_outlined,
                                                color: Color(0xFFFFEFB7),
                                                size: 50,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              constraints: BoxConstraints(
                                                maxWidth: 234,
                                              ),
                                              child: Text(
                                                'Tomorrow there will no sports activity, as some ground work is going on.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.3,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // news3sh9 (991:13294)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 24),
                                        padding: EdgeInsets.fromLTRB(
                                            20, 18.34, 8, 18.33),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff61417e),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              width: 30,
                                              height: 50,
                                              child: Icon(
                                                Icons
                                                    .notifications_none_outlined,
                                                color: Color(0xFFFFEFB7),
                                                size: 50,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              constraints: BoxConstraints(
                                                maxWidth: 234,
                                              ),
                                              child: Text(
                                                'Due to heavy rain forecast, the cricket match scheduled for this weekend has been postponed until further notice.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.3,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // news3sh9 (991:13294)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 24),
                                        padding: EdgeInsets.fromLTRB(
                                            20, 18.34, 8, 18.33),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff61417e),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              width: 30,
                                              height: 50,
                                              child: Icon(
                                                Icons
                                                    .notifications_none_outlined,
                                                color: Color(0xFFFFEFB7),
                                                size: 50,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              constraints: BoxConstraints(
                                                maxWidth: 234,
                                              ),
                                              child: Text(
                                                'The badminton court will be closed for maintenance from Monday to Wednesday next week.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.3,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // news3sh9 (991:13294)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 24),
                                        padding: EdgeInsets.fromLTRB(
                                            20, 18.34, 8, 18.33),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xff61417e),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              width: 30,
                                              height: 50,
                                              child: Icon(
                                                Icons
                                                    .notifications_none_outlined,
                                                color: Color(0xFFFFEFB7),
                                                size: 50,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              constraints: BoxConstraints(
                                                maxWidth: 234,
                                              ),
                                              child: Text(
                                                'The annual sports day event has been rescheduled to next month due to unforeseen circumstances.',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.3,
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
            ],
          ),
        ),
      ),
    );
  }
}
