import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/allMemberCompitition.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/model/modeApi/getWinner.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/homeMainScreens/widget_balance.dart';
import 'package:wst/view/other/homeMainScreens/widget_gallary.dart';
import 'package:wst/view/other/homeMainScreens/widget_home.dart';
import 'package:wst/view/other/homeMainScreens/widget_winner.dart';
import 'package:wst/view/other/widget/design_appbar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class homeMain extends StatefulWidget {
  homeMain({Key? key}) : super(key: key);

  @override
  State<homeMain> createState() => _homeMainState();
}

class _homeMainState extends State<homeMain> {
  homecontroller controller = Get.put(homecontroller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allAgent = [];
    winner = [];
    getAllAgents();
    getWinner();
  }

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
            widgetBalance(context),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(
                "المسابقات",
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'Almarai'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            widgetgallary(context),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "الرابحين",
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'Almarai'),
              ),
            ),
            widetWinner(context)
          ],
        )
      ],
    ));
  }
}
