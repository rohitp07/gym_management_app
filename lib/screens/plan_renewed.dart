import 'package:flutter/material.dart';

class Plan_Renewed extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Plan_Renewed> {
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
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              // successindicatorAnK (837:8582)
              margin: EdgeInsets.fromLTRB(50, 70, 50, 33.5),
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/done.png",
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
              // Image.network(
              //   [Image url]
              //   width:  100,
              //   height:  100,
              // ),
            ),
            Container(
              // planrenewedsuccessfullyVQ3 (837:8278)
              margin: EdgeInsets.fromLTRB(50, 0, 50, 33.5),
              child: Text(
                'Plan Renewed Successfully',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.2,
                  color: Color(0xff6df357),
                ),
              ),
            ),
            Container(
              // deliverydetailsHYT (837:8477)
              margin: EdgeInsets.fromLTRB(24, 0, 24, 18),
              padding: EdgeInsets.fromLTRB(19, 20, 7, 17),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff61417e),
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28343c44),
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                  BoxShadow(
                    color: Color(0x0a75838e),
                    offset: Offset(0, 0),
                    blurRadius: 0.5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup2qfy9af (TD9uJNYPfKuBL3o3Jg2Qfy)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                    width: double.infinity,
                    height: 21,
                    child: Container(
                      // group3647U79 (837:8481)
                      width: 190,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // namepB1 (837:8482)
                            margin: EdgeInsets.fromLTRB(0, 0, 36, 0),
                            child: Text(
                              'Plan Starts On:',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                                color: Color(0xffa4a4a4),
                              ),
                            ),
                          ),
                          Text(
                            // nameWpX (837:8483)
                            '1/07/2022',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                              color: Color(0xffc4c4c4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogroupilzdsQB (TD9uR31xN37no5R9ACiLZd)
                    width: double.infinity,
                    height: 38,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group3646DU3 (837:8478)
                          margin: EdgeInsets.fromLTRB(0, 12, 69, 5),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // nameMaF (837:8479)
                                margin: EdgeInsets.fromLTRB(0, 0, 41, 0),
                                child: Text(
                                  'Plan End Date',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2,
                                    color: Color(0xffa4a4a4),
                                  ),
                                ),
                              ),
                              Text(
                                // namet4P (837:8480)
                                '31/12/2022',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2125,
                                  color: Color(0xffc4c4c4),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // autogroupm6huqkK (TD9uVNE57u7HeYa7AVm6Hu)
                          width: 20,
                          height: double.infinity,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonlarge6RM (1091:14442)
                    margin: EdgeInsets.fromLTRB(18, 80, 25, 196),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(63.5, 12, 29.5, 12),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfff2cb41),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              // buttonnJB (1091:14443)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 6, 0),
                                child: Center(
                                  child: Text(
                                    'Download Receipt',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2,
                                      color: Color(0xff674882),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // iconfilldownloadu7u (1091:14444)
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 1),
                              width: 16,
                              height: 17,
                              // child:
                              // Image.network(
                              //   [Image url]
                              //   width:  16,
                              //   height:  17,
                              // ),
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
