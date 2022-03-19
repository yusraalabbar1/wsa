import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wst/view/other/homeMainScreens/widget_home.dart';

Widget widgetBalance(context) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff414D72), Color(0xff121E39)]),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    margin: EdgeInsets.all(20),
    height: 191, //(MediaQuery.of(context).size.height) / 4,
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "اجمالي الرصيد المتوفر",
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'Almarai'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "15",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontFamily: 'BAHNSCHRIFT'),
                  ),
                ),
                Container(
                  child: Text(
                    "USD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'BAHNSCHRIFT'),
                  ),
                ),
              ],
            )
          ],
        )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttonsend("ارسال", Icons.call_made, context),
            SizedBox(
              height: 20,
            ),
            buttonrec("استقبال", Icons.call_received, context),
          ],
        )),
      ],
    ),
  );
}
