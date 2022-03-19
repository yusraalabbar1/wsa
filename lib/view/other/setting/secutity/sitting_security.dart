import 'package:flutter/material.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/setting/secutity/widgetRowForSecurity.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class sittingSecurity extends StatefulWidget {
  sittingSecurity({Key? key}) : super(key: key);

  @override
  State<sittingSecurity> createState() => _sittingSecurityState();
}

class _sittingSecurityState extends State<sittingSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        containerMaine(),
        Container(
          decoration: boxDecorationMain(),
        ),
        rowAppbar(context),
        ListView(
          shrinkWrap: true,
          children: [
            // rowAppbar(context),
            Container(
              height: 284,
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff414D72), Color(0xff121E39)]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: widgetRowForSecurity(),
            ),
          ],
        )
      ],
    ));
  }
}
