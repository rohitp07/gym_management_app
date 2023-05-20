import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'newsdatabase.dart';

class Add extends StatefulWidget {
  Add({Key? key, required this.db}) : super(key: key);
  Database db;
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController codeController = new TextEditingController();
  @override
  void initState() {
    super.initState();
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
        title: Text(""),
      ),
      backgroundColor: Color(0xFF63447E),
      body: ListView(
        // child: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 0,
                right: 20,
                bottom: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(24, 0, 24, 40),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                  child: Text(
                    'News Heading',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                      color: Color(0xfffffbeb),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 13.5, 12, 13.5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff63448a),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  // child:
                  // Text(
                  //   'Enter news heading',
                  //   style:  TextStyle (
                  //     fontSize:  11,
                  //     fontWeight:  FontWeight.w400,
                  //     height:  1.2,
                  //     color:  Color(0x4cffffff),
                  //   ),
                  // ),
                  child: TextField(
                    controller: nameController,
                    maxLines: null,
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                    decoration: InputDecoration(
                      labelText: "Enter news heading",
                      labelStyle: TextStyle(fontSize: 13, color: Colors.white),
                      border: InputBorder.none, // remove the border
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    cursorColor: Colors.white, // set cursor color
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.fromLTRB(24, 0, 34, 40),
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(4),
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         // addimagesX7D (941:10247)
          //         margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
          //         child: Text(
          //           'Add Images',
          //           style: TextStyle(
          //             fontSize: 14,
          //             fontWeight: FontWeight.w500,
          //             height: 1.2,
          //             color: Color(0xfffffbeb),
          //           ),
          //         ),
          //       ),
          //       Container(
          //         // autogroupjhhhSjy (WnihSYxMi3g7q885TJjhHh)
          //         width: double.infinity,
          //         height: 100,
          //         child: Row(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(
          //               // frame347yju (941:10248)
          //               margin: EdgeInsets.fromLTRB(0, 0, 22, 0),
          //               padding: EdgeInsets.fromLTRB(34, 20.83, 33, 18),
          //               height: double.infinity,
          //               decoration: BoxDecoration(
          //                 color: Color(0xff63448a),
          //                 borderRadius: BorderRadius.circular(4),
          //               ),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Container(
          //                     margin: EdgeInsets.fromLTRB(0, 0, 1, 8.83),
          //                     width: 28.33,
          //                     height: 28.33,
          //                     child: Icon(
          //                       Icons.add_photo_alternate_outlined,
          //                       // Icons.edit_calendar_outlined,
          //                       color: Color(0xffa4a4a4),
          //                       size: 30,
          //                     ),
          //                   ),
          //                   Center(
          //                     child: Container(
          //                       constraints: BoxConstraints(
          //                         maxWidth: 73,
          //                       ),
          //                       child: RichText(
          //                         textAlign: TextAlign.center,
          //                         text: TextSpan(
          //                           style: TextStyle(
          //                             fontSize: 8,
          //                             fontWeight: FontWeight.w400,
          //                             height: 1.5,
          //                             color: Color(0xffffffff),
          //                           ),
          //                           children: [
          //                             TextSpan(
          //                               text: 'Drop image here or\n',
          //                               style: TextStyle(
          //                                 fontSize: 8,
          //                                 fontWeight: FontWeight.w400,
          //                                 height: 1.5,
          //                                 color: Color(0xffa4a4a4),
          //                               ),
          //                             ),
          //                             TextSpan(
          //                               text: 'Browse image',
          //                               style: TextStyle(
          //                                 fontSize: 8,
          //                                 fontWeight: FontWeight.w400,
          //                                 height: 1.5,
          //                                 decoration: TextDecoration.underline,
          //                                 color: Color(0xffffffff),
          //                                 decorationColor: Color(0xffffffff),
          //                               ),
          //                             ),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               // frame348qp3 (941:10249)
          //               padding: EdgeInsets.fromLTRB(34, 18, 33, 24),
          //               height: double.infinity,
          //               decoration: BoxDecoration(
          //                 color: Color(0xff63448a),
          //                 borderRadius: BorderRadius.circular(4),
          //               ),
          //               child: Column(
          //                 crossAxisAlignment: CrossAxisAlignment.center,
          //                 children: [
          //                   Container(
          //                     margin: EdgeInsets.fromLTRB(0, 0, 20, 12),
          //                     width: 26,
          //                     height: 31,
          //                     child: Icon(
          //                       Icons.add_circle_outline,
          //                       color: Color(0xffa4a4a4),
          //                       size: 40,
          //                     ),
          //                   ),
          //                   Center(
          //                     child: Text(
          //                       'Add another image',
          //                       textAlign: TextAlign.center,
          //                       style: TextStyle(
          //                         fontSize: 8,
          //                         fontWeight: FontWeight.w400,
          //                         height: 1.5,
          //                         color: Color(0xffa4a4a4),
          //                       ),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            // group36802Nj (941:10242)
            margin: EdgeInsets.fromLTRB(24, 0, 24, 86),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // newsdescriptionMfu (941:10243)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                  child: Text(
                    'News Description',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                      color: Color(0xfffffbeb),
                    ),
                  ),
                ),
                Container(
                  // frame345Gns (941:10244)
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff63448a),
                    borderRadius: BorderRadius.circular(4),
                  ),

                  child: TextField(
                    controller: codeController,
                    maxLines: null,
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                    decoration: InputDecoration(
                      labelText: "Here add your news information.",
                      labelStyle: TextStyle(fontSize: 13, color: Colors.white),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    cursorColor: Colors.white,
                  ),

                  // child:
                  // Center(
                  //   child:
                  //   Text(
                  //     'Here add your news information.',
                  //     textAlign:  TextAlign.center,
                  //     style:  TextStyle (
                  //       fontSize:  11,
                  //       fontWeight:  FontWeight.w400,
                  //       height:  1.4,
                  //       color:  Color(0x4cffffff),
                  //     ),
                  //   ),
                  // ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Container(
                    width: 500,
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: Colors.transparent,
                    child: BottomAppBar(
                      color: Colors.transparent,
                      child: ElevatedButton(
                          onPressed: () {
                            widget.db.create(
                                nameController.text, codeController.text);
                            Navigator.pop(context, true);
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(color: Color(0xff63448a)),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFF2CB41),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        // ),
      ),
    );
  }

  InputDecoration inputDecoration(String labelText) {
    return InputDecoration(
      focusColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white),
      labelText: labelText,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
        ),
      ),
    );
  }
}
