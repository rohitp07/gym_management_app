import 'package:flutter/material.dart';
import 'package:gym222/screens/renew_plan.dart';

import 'allPlans.dart';

class payment extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<payment> {
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
          "Payments",
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
                  top: 0,
                  left: 20,
                  right: 20,
                  bottom: 38,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 0, 24, 30),
              padding: EdgeInsets.fromLTRB(16, 20, 24, 20),
              width: double.infinity,
              height: 148,
              decoration: BoxDecoration(
                color: Color(0xff61417f),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouptawebtW (JEdgL2UxirN5ivGQAptaWe)
                    margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                    padding: EdgeInsets.fromLTRB(23, 34, 22, 34),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffffe2e2),
                      borderRadius: BorderRadius.circular(50),
                      // image:  DecorationImage (
                      //   fit:  BoxFit.cover,
                      //   image:  NetworkImage (
                      //       [Image url]
                      //   ),
                      // ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      // daysleft3Ei (494:8123)
                      child: Center(
                        child: SizedBox(
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 55,
                            ),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                  color: Color(0xffffffff),
                                ),
                                children: [
                                  TextSpan(
                                    text: '102\n',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Days Left',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 7.5, 0, 3.5),
                    width: 162,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroupdgzgPLW (JEdgV2DyNQoooWMdsbDgZg)
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 11),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group69i7t (494:8125)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // labelErv (494:8126)
                                      margin: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                      child: Text(
                                        'CURRENT PLAN:',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2,
                                          color: Color(0xffa4a4a4),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // inputtextm6A (494:8127)
                                      'Student',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group72hVc (494:8128)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // labeldu4 (494:8129)
                                      margin: EdgeInsets.fromLTRB(0, 0, 11, 0),
                                      child: Text(
                                        'PLAN AMOUNT:',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2,
                                          color: Color(0xffa4a4a4),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // inputtextZGv (494:8130)
                                      '₹ 500',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group706ne (494:8131)
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // label2gJ (494:8132)
                                margin: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                child: Text(
                                  'PLAN START ON:',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2,
                                    color: Color(0xffa4a4a4),
                                  ),
                                ),
                              ),
                              Text(
                                // inputtextwoG (494:8133)
                                '01/05/22',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group71tTc (494:8134)
                          margin: EdgeInsets.fromLTRB(0, 0, 1, 0),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // label2Jv (494:8135)
                                margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                                child: Text(
                                  'PLAN ENDS ON:',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2,
                                    color: Color(0xffa4a4a4),
                                  ),
                                ),
                              ),
                              Text(
                                // inputtext98e (494:8136)
                                '31/10/22',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2,
                                  color: Color(0xffffffff),
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 120, 52),
              constraints: BoxConstraints(
                maxWidth: 220,
              ),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'Notes for Student\n',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                        color: Color(0xffa4a4a4),
                      ),
                    ),
                    TextSpan(
                        text: '• ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: 'Plan validity for student ',
                    ),
                    TextSpan(
                      text: '6 months\n',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: Color(0xffffefb7),
                      ),
                    ),
                    TextSpan(
                        text: '• ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: 'One time registration fees ',
                    ),
                    TextSpan(
                      text: '₹ 100\n',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: Color(0xffffefb7),
                      ),
                    ),
                    TextSpan(
                        text: '• ',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                      text: 'Charges for 6 months',
                    ),
                    TextSpan(
                      text: ' ₹ 500',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        color: Color(0xffffefb7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // paymentoperations8j1 (500:6795)
              margin: EdgeInsets.fromLTRB(24, 0, 24, 15),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Renew_Plan()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Color(0xFF62417E),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 22.5, 20, 22.5),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff61417e),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        // contentxi3 (I829:12153;500:6780)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // labelJ1D (I829:12153;500:6781)
                              margin: EdgeInsets.fromLTRB(0, 0, 199, 0),
                              child: Text(
                                'RENEW PLAN',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  color: Color(0xffa4a4a4),
                                ),
                              ),
                            ),
                            Container(
                              width: 7,
                              height: 20,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Color(0xffa4a4a4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Color(0xFF62417E),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 22.5, 20, 22.5),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff61417e),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        // contentQCf (500:6780)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // labelASj (500:6781)
                              margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                              child: Text(
                                'PAYMENT HISTORY',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  color: Color(0xffa4a4a4),
                                ),
                              ),
                            ),
                            Container(
                              width: 7,
                              height: 20,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Color(0xffa4a4a4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AllPlans()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Color(0xFF62417E),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 22.5, 20, 22.5),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff61417e),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        // content6jh (I500:6788;500:6780)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // labelF6o (I500:6788;500:6781)
                              margin: EdgeInsets.fromLTRB(0, 0, 215, 0),
                              child: Text(
                                'ALL PLANS',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  color: Color(0xffa4a4a4),
                                ),
                              ),
                            ),
                            Container(
                              width: 7,
                              height: 20,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Color(0xffa4a4a4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Color(0xFF62417E),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 22.5, 20, 22.5),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff61417e),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        // contentAsy (I500:6796;500:6780)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // label8K1 (I500:6796;500:6781)
                              margin: EdgeInsets.fromLTRB(0, 0, 206, 0),
                              child: Text(
                                'BUY T-SHIRT',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  color: Color(0xffa4a4a4),
                                ),
                              ),
                            ),
                            Container(
                              width: 7,
                              height: 20,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Color(0xffa4a4a4)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: Color(0xFF62417E),
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(12, 22.5, 20, 22.5),
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff61417e),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Container(
                        // contentH5R (I500:6803;500:6780)
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // labelSDD (I500:6803;500:6781)
                              margin: EdgeInsets.fromLTRB(0, 0, 155, 0),
                              child: Text(
                                'CORE MEMBERSHIP',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2,
                                  color: Color(0xffa4a4a4),
                                ),
                              ),
                            ),
                            Container(
                              width: 7,
                              height: 20,
                              child: Icon(Icons.arrow_forward_ios,
                                  size: 16.0, color: Color(0xffa4a4a4)),
                            ),
                          ],
                        ),
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
