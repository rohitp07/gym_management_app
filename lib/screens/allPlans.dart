import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class AllPlans extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<AllPlans> {

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  initWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF63447E),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Color(0xFFFFEFB7)),
        ),
        title: Text(
          "All Plans",
          style: TextStyle(color: Color(0xFFFFEFB7)),
        ),
      ),
      backgroundColor: Color(0xFF63447E),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
              ),
            ),
            Container(
              // studentplanyVH (513:10721)
              margin:  EdgeInsets.fromLTRB(24, 0, 24, 30),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
                  Container(
                    // studentplanKZ9 (513:10736)
                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child:
                    Text(
                      'Student Plan',
                      style:  TextStyle (
                        fontSize:  14,
                        fontWeight:  FontWeight.w500,
                        height:  1.2,
                        color:  Color(0xffffefb7),
                      ),
                    ),
                  ),
                  Container(
                    // plancontentSNs (513:10722)
                    padding:  EdgeInsets.fromLTRB(24, 19, 24, 19),
                    width:  double.infinity,
                    height:  158,
                    decoration:  BoxDecoration (
                      color:  Color(0xff61417e),
                      borderRadius:  BorderRadius.circular(8),
                    ),
                    child:
                    Container(
                      // frame120mg3 (513:10723)
                      width:  162,
                      height:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children:  [
                          Container(
                            // autogroupynntKhZ (Qbhm9TNH4CSYhYUaDQYNnT)
                            padding:  EdgeInsets.fromLTRB(0, 0, 0, 14),
                            width:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // group69qA7 (513:10724)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 9, 14),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // label9gb (513:10725)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 6, 0),
                                        child:
                                        Text(
                                          'PLAN CATEOGRY:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextHXu (513:10726)
                                        'Student',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // group71pGw (513:10727)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 22, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // label9KD (513:10728)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 18, 0),
                                        child:
                                        Text(
                                          'REGISTRATION:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextrjR (513:10729)
                                        '₹ 100',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group70C2b (513:10730)
                            margin:  EdgeInsets.fromLTRB(0, 0, 0, 14),
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // labelk47 (513:10731)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 18, 0),
                                  child:
                                  Text(
                                    'PLAN VALIDITY:',
                                    style:  TextStyle (
                                      fontSize:  12,
                                      fontWeight:  FontWeight.w400,
                                      height:  1.2,
                                      color:  Color(0xffa4a4a4),
                                    ),
                                  ),
                                ),
                                Text(
                                  // inputtext5s5 (513:10732)
                                  '6 Months',
                                  style:  TextStyle (
                                    fontSize:  12,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group72pZm (513:10733)
                            margin:  EdgeInsets.fromLTRB(0, 0, 20, 0),
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // labelNbH (513:10734)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  child:
                                  Text(
                                    'PLAN AMOUNT:',
                                    style:  TextStyle (
                                      fontSize:  12,
                                      fontWeight:  FontWeight.w400,
                                      height:  1.2,
                                      color:  Color(0xffa4a4a4),
                                    ),
                                  ),
                                ),
                                Text(
                                  // inputtextsnw (513:10735)
                                  '₹ 500',
                                  style:  TextStyle (
                                    fontSize:  12,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2,
                                    color:  Color(0xffffffff),
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
            Container(
              // playerplan18T (513:10737)
              margin:  EdgeInsets.fromLTRB(24, 0, 24, 30),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
                  Container(
                    // playerplanX6o (513:10752)
                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child:
                    Text(
                      'Player Plan',
                      style:  TextStyle (
                        fontSize:  14,
                        fontWeight:  FontWeight.w500,
                        height:  1.2,
                        color:  Color(0xffffefb7),
                      ),
                    ),
                  ),
                  Container(
                    // plancontentGKH (513:10738)
                    padding:  EdgeInsets.fromLTRB(24, 19, 24, 19),
                    width:  double.infinity,
                    height:  158,
                    decoration:  BoxDecoration (
                      color:  Color(0xff61417e),
                      borderRadius:  BorderRadius.circular(8),
                    ),
                    child:
                    Container(
                      // frame120Cyd (513:10739)
                      width:  149,
                      height:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // autogroupo6ajkkF (QbhkdyDQbketfPr5Qno6Aj)
                            padding:  EdgeInsets.fromLTRB(0, 0, 0, 14),
                            width:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // group696p7 (513:10740)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 6, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelPoD (513:10741)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 6, 0),
                                        child:
                                        Text(
                                          'PLAN CATEOGRY:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextwJw (513:10742)
                                        'Player',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.21,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:  14,
                                ),
                                Container(
                                  // group71qv7 (513:10743)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 22, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelNf9 (513:10744)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 18, 0),
                                        child:
                                        Text(
                                          'REGISTRATION:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextKKV (513:10745)
                                        '₹ 0',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:  14,
                                ),
                                Container(
                                  // group70s67 (513:10746)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 6, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelpX9 (513:10747)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 18, 0),
                                        child:
                                        Text(
                                          'PLAN VALIDITY:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextxtF (513:10748)
                                        '1 Year',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group72i6j (513:10749)
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // labelTq1 (513:10750)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  child:
                                  Text(
                                    'PLAN AMOUNT:',
                                    style:  TextStyle (
                                      fontSize:  12,
                                      fontWeight:  FontWeight.w400,
                                      height:  1.2,
                                      color:  Color(0xffa4a4a4),
                                    ),
                                  ),
                                ),
                                Text(
                                  // inputtextm51 (513:10751)
                                  '₹ 2500',
                                  style:  TextStyle (
                                    fontSize:  12,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2,
                                    color:  Color(0xffffffff),
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
            Container(
              // coremembershipX4B (513:10753)
              margin:  EdgeInsets.fromLTRB(24, 0, 24, 46),
              width:  double.infinity,
              child:
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children:  [
                  Container(
                    // coremembershipfgB (513:10768)
                    margin:  EdgeInsets.fromLTRB(0, 0, 0, 12),
                    child:
                    Text(
                      'Core Membership',
                      style:  TextStyle (
                        fontSize:  14,
                        fontWeight:  FontWeight.w500,
                        height:  1.2,
                        color:  Color(0xffffefb7),
                      ),
                    ),
                  ),
                  Container(
                    // plancontentPs5 (513:10754)
                    padding:  EdgeInsets.fromLTRB(24, 19, 24, 19),
                    width:  double.infinity,
                    height:  158,
                    decoration:  BoxDecoration (
                      color:  Color(0xff61417e),
                      borderRadius:  BorderRadius.circular(8),
                    ),
                    child:
                    Container(
                      // frame120LnK (513:10755)
                      width:  186,
                      height:  double.infinity,
                      child:
                      Column(
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children:  [
                          Container(
                            // group69gbH (513:10756)
                            width:  double.infinity,
                            child:
                            Row(
                              crossAxisAlignment:  CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  // label3wd (513:10757)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 6, 0),
                                  child:
                                  Text(
                                    'PLAN CATEOGRY:',
                                    style:  TextStyle (
                                      fontSize:  12,
                                      fontWeight:  FontWeight.w400,
                                      height:  1.2,
                                      color:  Color(0xffa4a4a4),
                                    ),
                                  ),
                                ),
                                Text(
                                  // inputtextyKV (513:10758)
                                  'Core Member',
                                  style:  TextStyle (
                                    fontSize:  12,
                                    fontWeight:  FontWeight.w400,
                                    height:  1.2,
                                    color:  Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupedukK8T (Qbhk7KRpAtFgKTz1gZEDUK)
                            padding:  EdgeInsets.fromLTRB(0,14,0,0),
                            width:  double.infinity,
                            child:
                            Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children:  [
                                Container(
                                  // group71RBV (513:10759)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 59, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelxSK (513:10760)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 18, 0),
                                        child:
                                        Text(
                                          'REGISTRATION:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextdHZ (513:10761)
                                        '₹ 0',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:  14,
                                ),
                                Container(
                                  // group70Nkw (513:10762)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 43, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelWMM (513:10763)
                                        margin:  EdgeInsets.fromLTRB(0,0,18,0),
                                        child:
                                        Text(
                                          'PLAN VALIDITY:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextQhd (513:10764)
                                        '1 Year',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:  14,
                                ),
                                Container(
                                  // group72xDM (513:10765)
                                  margin:  EdgeInsets.fromLTRB(0, 0, 37, 0),
                                  width:  double.infinity,
                                  child:
                                  Row(
                                    crossAxisAlignment:  CrossAxisAlignment.center,
                                    children:  [
                                      Container(
                                        // labelhgj (513:10766)
                                        margin:  EdgeInsets.fromLTRB(0, 0, 16, 0),
                                        child:
                                        Text(
                                          'PLAN AMOUNT:',
                                          style:  TextStyle (
                                            fontSize:  12,
                                            fontWeight:  FontWeight.w400,
                                            height:  1.2,
                                            color:  Color(0xffa4a4a4),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // inputtextDf5 (513:10767)
                                        '₹ 5000',
                                        style:  TextStyle (
                                          fontSize:  12,
                                          fontWeight:  FontWeight.w400,
                                          height:  1.2,
                                          color:  Color(0xffffffff),
                                        ),
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}