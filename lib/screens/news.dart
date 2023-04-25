import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gym222/screens/addNewNews.dart';
import 'package:gym222/screens/notification.dart';

//
// enum ImageSourceType { gallery, camera }

class News extends StatefulWidget {
  // void _handleURLButtonPress(BuildContext context, var type) {
  //   Navigator.push(context,
  //       MaterialPageRoute(builder: (context) => ImageFromGalleryEx(type)));
  // }

  @override
  State<StatefulWidget> createState() => StartState();
}

String? selectedValue;

class StartState extends State<News> {
  // bool _isButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      backgroundColor: Color(0xFF63447E),
      body:
          // SingleChildScrollView(

          Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 25,
                    color: Color(0xFFC4C4C4),
                  ),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(Icons.newspaper,
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
                              //         builder: (context) => News()),
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
                                      "News",
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
                          // Material(
                          //   color: Colors.transparent,
                          //   child: InkResponse(
                          //     onTap: () {
                          //       Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => Notifications()));
                          //     },
                          //     splashColor: Colors.blue,
                          //     // highlightColor: Colors.transparent,
                          //     child: Container(
                          //       width: 120,
                          //       decoration: const BoxDecoration(
                          //           color: Color(0xFF62417E),
                          //           borderRadius: BorderRadius.only(
                          //               bottomRight: Radius.circular(12),
                          //               bottomLeft: Radius.circular(12))),
                          //       child: Text(
                          //         "Notifications",
                          //         style: TextStyle(
                          //           // fontSize: 28.0,
                          //           // fontWeight: FontWeight.bold,
                          //           color: Color(0xFFFFEFB7),
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //       padding: const EdgeInsets.all(12),
                          //     ),
                          //   ),
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Notifications()));
                            },
                            child: Container(
                              width: 128,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF62417E),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(12))),
                              child: Text(
                                "Notifications",
                                style: TextStyle(
                                  // fontSize: 28.0,
                                  // fontWeight: FontWeight.bold,
                                  color: Color(0xFFFFEFB7),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              padding: const EdgeInsets.all(12),
                            ),
                          )
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
                                        // news1FkK (991:13290)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 14.5),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 8, 0),
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
                                                      0, 1, 12, 0),
                                                  width: 93,
                                                  height: 75,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    child: Image.asset(
                                                        "assets/news/img1.jpeg"),
                                                  ),
                                                ),
                                                Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 189,
                                                  ),
                                                  child: Text(
                                                    'शिरवळ जिमखान्याच्या वतीने शालेय विद्यार्थ्यांसाठी दुहेरी बॅडमिंटन स्पर्धेचे आयोजन करण्यात आले होते. यामध्ये सुमारे ५० हुन अधिक विद्यार्थ्यांनी सहभाग नोंदविला होता.',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.5,
                                                      letterSpacing: 0.22,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      4, 0, 0, 0),
                                                  width: 18,
                                                  height: 30,
                                                  child: TextButton(
                                                      onPressed: () {},
                                                      style:
                                                          TextButton.styleFrom(
                                                        padding:
                                                            EdgeInsets.zero,
                                                      ),
                                                      child: Icon(
                                                        Icons.delete,
                                                        size: 21,
                                                        color:
                                                            Color(0xFFC44747),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 24),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 6, 10),
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
                                              // image19hPM (I991:13293;324:4206)
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 12, 0),
                                              width: 93,
                                              height: 60,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                child: Image.asset(
                                                    "assets/news/img2.jpg"),
                                              ),
                                            ),
                                            Container(
                                              // loremipsumdolorsitametilacusco (I991:13293;324:4203)
                                              constraints: BoxConstraints(
                                                maxWidth: 191,
                                              ),
                                              child: Text(
                                                'सृष्टीने देशाला मिळवून दिले एकमेव वैयक्तिक सुवर्ण; पदार्पणात जिंकले आंतरराष्ट्रीय पदक',
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
                                        // news1FkK (991:13290)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 14.5),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 8, 0),
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
                                                      0, 1, 12, 0),
                                                  width: 93,
                                                  height: 75,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    child: Image.asset(
                                                        "assets/news/img3.jpg"),
                                                  ),
                                                ),
                                                Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 189,
                                                  ),
                                                  child: Text(
                                                    'विश्व क्रिकेट चॅम्पिअनशिप फायनलमध्ये भारत आणि न्यूझीलंड यांची टीम्स भिडणार आहेत. फायनल सोमवारी, १८ ऑक्टोबर २०२१ रोजी खेळली जाईल.',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.5,
                                                      letterSpacing: 0.22,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // news1FkK (991:13290)
                                        margin:
                                            EdgeInsets.fromLTRB(0, 20, 0, 14.5),
                                        child: TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 8, 0),
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
                                                      0, 1, 12, 0),
                                                  width: 93,
                                                  height: 75,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    child: Image.asset(
                                                        "assets/news/img4.jpg"),
                                                  ),
                                                ),
                                                Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 189,
                                                  ),
                                                  child: Text(
                                                    'टेनिसचे आखिरी ग्रॅंड स्लॅम टूर्नामेंट, यूएस ओपन मधील फाइनलमध्ये रोजर फेडरर आणि नोवाक जोकोविच एकमेकांवर सामने येत असतात.',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.5,
                                                      letterSpacing: 0.22,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 6)),
                                      // FloatingActionButton(
                                      //     style: ElevatedButton.styleFrom(
                                      //         primary: Colors.green,
                                      //         shape: CircleBorder(),
                                      //         padding: EdgeInsets.all(12)),
                                      //     child: Icon(Icons.add, color: Colors.white),
                                      //     onPressed: () {
                                      //       // if (_formKey.currentState.validate()) {
                                      //       //   _addCompras();
                                      //       // }
                                      //     }),

                                      // Scaffold(
                                      //   floatingActionButton: ElevatedButton(
                                      //     style: ElevatedButton.styleFrom(
                                      //       primary: Colors.green,
                                      //       shape: CircleBorder(),
                                      //       padding: EdgeInsets.all(12),
                                      //       elevation: 8.0, // add some elevation to make it look like a floating action button
                                      //     ),
                                      //     child: Icon(Icons.add, color: Colors.white),
                                      //     onPressed: () {
                                      //       // do something when the button is pressed
                                      //     },
                                      //   ),
                                      //   // add other widgets to the scaffold body
                                      // ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    addNewNews()),
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.black, size: 30),
      ),
    );
  }
}
