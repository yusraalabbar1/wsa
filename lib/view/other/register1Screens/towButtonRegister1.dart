import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wst/view/other/homeMainScreens/widget_home.dart';

Widget towButtonRegister1() {
  return Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        width: 127,
        height: 37,
        child: RaisedButton(
          onPressed: () {
            print('Button Clicked.');
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: Text(
            "الأرباح",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: 'Almarai'),
          ),
          textColor: Colors.white,
          splashColor: Colors.white,
          color: Color(0xff464699),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        width: 127,
        height: 37,
        child: RaisedButton(
          onPressed: () {
            print('Button Clicked.');
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          child: Text(
            "السجل",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: 'Almarai'),
          ),
          textColor: Colors.white,
          splashColor: Colors.white,
          color: Color(0xff464699),
        ),
      ),
    ]),
  );
}
