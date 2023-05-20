import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:gym222/screens/news/newsview.dart';

import '../notifications/notificationadmin.dart';
import 'newsadd.dart';
import 'newsdatabase.dart';

class NewsAdmin extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => StartState();
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<NewsAdmin> {
  late Database db;
  List docs = [];
  initialise() {
    db = Database();
    db.initiliase();
    db.read().then((value) => {
          setState(() {
            docs = value!;
          })
        });
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63447E),
        leading: IconButton(
          iconSize: 25,
          icon: Icon(Icons.arrow_back, color: Color(0xFFC4C4C4)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("News and Notifications"),
      ),
      backgroundColor: Color(0xFF63447E),

      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                                    builder: (context) =>
                                        NotificationsAdmin()));
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
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: docs.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    tileColor: Color(0xFF62417E),
                    visualDensity: VisualDensity(vertical: 4),
                    onTap: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NewsView(country: docs[index], db: db)))
                          .then((value) => {
                                if (value != null) {initialise()}
                              });
                    },
                    contentPadding: EdgeInsets.only(right: 30, left: 36),
                    leading: Icon(Icons.newspaper_outlined,
                        color: Color(0xFFFFEFB7)),
                    title: Text(docs[index]['News Heading'],
                        style: TextStyle(color: Color(0xFFFFEFB7))),
                    subtitle: Text(docs[index]['News Description'],
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Add(db: db)))
              .then((value) {
            if (value != null) {
              initialise();
            }
          });
        },
        tooltip: 'Increment',
        backgroundColor: Colors.white,
        child: const Icon(Icons.add, color: Colors.black, size: 30),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
