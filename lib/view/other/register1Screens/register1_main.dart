import 'package:flutter/material.dart';
import 'package:wst/model/modeApi/userBalance.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/register1Screens/towButtonRegister1.dart';
import 'package:wst/view/other/register1Screens/widgetRigerter1moy.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class register1Main extends StatefulWidget {
  register1Main({Key? key}) : super(key: key);

  @override
  State<register1Main> createState() => _register1Main();
}

class _register1Main extends State<register1Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        containerMaine(),
        Container(
          decoration: boxDecorationMain(),
        ),
        ListView(
          shrinkWrap: true,
          children: [
            rowAppbar(context),
            towButtonRegister1(),
            Container(
              height: 91,
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff414D72), Color(0xff121E39)]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("رصيد محفظتك ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Almarai')),
                  Text(balanceForUser.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 39,
                          fontFamily: 'Almarai'))
                ],
              ),
            ),
            Container(
              height: 350,
              margin: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff414D72), Color(0xff121E39)]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: widgetRigerter1moy(),
            ),
          ],
        )
      ],
    ));
  }
}
