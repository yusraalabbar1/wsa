import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/GetNotification.dart';
import 'package:wst/model/modeApi/commissionBalance.dart';
import 'package:wst/model/modeApi/common_questions.dart';
import 'package:wst/model/modeApi/get_all_social.dart';
import 'package:wst/model/modeApi/infoNotific.dart';
import 'package:wst/model/modeApi/model_compitition.dart';
import 'package:wst/model/modeApi/userBalancLog.dart';
import 'package:wst/model/modeApi/userBalance.dart';
import 'package:wst/utils/constant/url.dart';
import 'package:wst/view/other/agentsScreens/agents_main.dart';
import 'package:wst/view/other/competitionsScreens/competitions_main.dart';
import 'package:wst/view/other/drawer_main.dart';
import 'package:wst/view/other/homeMainScreens/home_main.dart';
import 'package:wst/view/other/register1Screens/register1_main.dart';
import 'package:wst/view/other/register2Screens/register2_main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

final List<Widget> widgetOptions = <Widget>[
  agentsMain(),
  competitionsMain(),
  homeMain(),
  register1Main(),
  register2Main(),
];

class _homePageState extends State<homePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    infoNotification();
    GetNotification();
    commonQuestionsapi();
    MyCompitition = [];
    allCompititionapi();
    userBalanc();
    userBalancLog();
    comissionBalanc();
  }

///////////////////////////////////
  homecontroller controller = Get.put(homecontroller());
  var lim;

  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        child: drawerMain(context),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 60.0,
        items: <Widget>[
          InkWell(
            child: Image.asset(
              "assets/images/agents.png",
              width: 28,
              height: 28,
            ),
          ),
          InkWell(
            child: Image.asset(
              "assets/images/winningcup.png",
              width: 28,
              height: 28,
            ),
          ),
          InkWell(
            child: Image.asset(
              "assets/images/home.png",
              width: 28,
              height: 28,
            ),
          ),
          InkWell(
            child: Image.asset(
              "assets/images/register2.png",
              width: 28,
              height: 28,
            ),
          ),
          InkWell(
            child: Image.asset(
              "assets/images/register1.png",
              width: 28,
              height: 28,
            ),
          ),
        ],
        color: Color(0xff1C2948),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
