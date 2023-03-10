import 'dart:io';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:gym222/screens/plan_renewed.dart';

class Renew_Plan extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Renew_Plan> {
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
          "Renew Plan",
          style: TextStyle(color: Color(0xFFFFEFB7)),
        ),
      ),
      backgroundColor: Color(0xFF63447E),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 30, 120, 52),
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
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          color: Color(0xffa4a4a4),
                        ),
                      ),
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
                // group3654ehu (829:12002)
                margin: EdgeInsets.fromLTRB(24, 0, 26, 63),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // memebrplaninfoZZy (829:12003)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Text(
                        'Supported UPI’s:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2,
                          color: Color(0xffa4a4a4),
                        ),
                      ),
                    ),
                    Container(
                      // frame293Ugw (829:12004)
                      width: double.infinity,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // paymentmethodamazonpayco9 (829:12005)
                            padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd9d9d9)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              // phonepesvgw4j (829:12007)
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: Image.asset(
                                  "assets/phonepe.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                // child:
                                // Image.network(
                                // [Image url]
                                // width:  30,
                                // height:  30,
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          // paymentmethodgooglepayeUw (829:12011)
                          Container(
                            // paymentmethodpaypalTSP (829:12028)
                            padding:
                                EdgeInsets.fromLTRB(10.02, 16.02, 10.01, 16.35),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd9d9d9)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              // paytmsvgALo (829:12030)
                              child: SizedBox(
                                width: 49.97,
                                height: 15.63,
                                child: Image.asset(
                                  "assets/gpay.png",
                                  width: 500,
                                  height: 500,
                                  fit: BoxFit.contain,
                                ),
                                // child:
                                // Image.network(
                                // [Image url]
                                // width:  49.97,
                                // height:  15.63,
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            // paymentmethodpaypalTSP (829:12028)
                            padding:
                                EdgeInsets.fromLTRB(10.02, 16.02, 10.01, 16.35),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd9d9d9)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              // paytmsvgALo (829:12030)
                              child: SizedBox(
                                width: 49.97,
                                height: 15.63,
                                child: Image.asset(
                                  "assets/paytm.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                // child:
                                // Image.network(
                                // [Image url]
                                // width:  49.97,
                                // height:  15.63,
                                // ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          // paymentmethodamazonpayGud (829:12042)
                          Container(
                            // paymentmethodpaypalTSP (829:12028)
                            padding:
                                EdgeInsets.fromLTRB(10.02, 16.02, 10.01, 16.35),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffd9d9d9)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              // paytmsvgALo (829:12030)
                              child: SizedBox(
                                width: 49.97,
                                height: 15.63,
                                child: Image.asset(
                                  "assets/amazon.png",
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                                // child:
                                // Image.network(
                                // [Image url]
                                // width:  49.97,
                                // height:  15.63,
                                // ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group36584GX (848:8039)
                margin: EdgeInsets.fromLTRB(24, 0, 24, 50),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // memebrplaninfoNo1 (829:12065)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Text(
                        'Pay using your UPI ID',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.2,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    TextButton(
                      // inputfieldgoh (829:16384)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8, 10, 229, 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffc4c4c4)),
                          color: Color(0xff61417e),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // upiiconBEf (I829:16384;826:13682)
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              width: 24,
                              height: 24,
                              child: Image.asset(
                                "assets/upi.png",
                                width: 100,
                                height: 100,
                                fit: BoxFit.contain,
                              ),
                              // child:
                              // Image.network(
                              // [Image url]
                              // fit:  BoxFit.cover,
                              // ),
                            ),
                            // Text(
                            //   // inputtexthio (I829:16384;826:13665)
                            //   'UPI ID',
                            //   style: TextStyle(
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w400,
                            //     height: 1.2,
                            //     color: Color(0xffc4c4c4),
                            //   ),
                            // ),
                            Expanded(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                cursorColor: Color(0xFFC4C4C4),
                                decoration: InputDecoration(
                                  // suffixIcon: Icon(Icons.create_outlined,
                                  //     color: Colors.white),
                                  labelText: "UPI ID",
                                  // hintText: "ADDRESS",
                                  labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFFC4C4C4),
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // buttonlargeFkK (826:12711)
                margin: EdgeInsets.fromLTRB(24, 0, 24, 166),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Plan_Renewed()));
                  },
                  // onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 44,
                    decoration: BoxDecoration(
                      color: Color(0xfff2cb41),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Pay ₹500',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            color: Color(0xff674882),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
