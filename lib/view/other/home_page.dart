import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/get_all_social.dart';
import 'package:wst/model/modeApi/infoNotific.dart';
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

class _homePageState extends State<homePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    infoNotification();
  }

///////////////////////////////////
  homecontroller controller = Get.put(homecontroller());
  var lim;

  int _selectedIndex = 2;
  final List<Widget> _widgetOptions = <Widget>[
    agentsMain(),
    competitionsMain(),
    homeMain(),
    register1Main(),
    register2Main(),
  ];
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
        // buttonBackgroundColor: Color(0xff62CAF1),
        // buttonBackgroundColor: Color(0xff1C2948),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 500),
        // onTap: (index) {
        //   setState(() {
        //     _onItemTapped;
        //   });
        // },
        onTap: _onItemTapped,
        letIndexChange: (index) => true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      /* Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff1C2948),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.support_agent),
              label: 'الوكلاء'.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics_sharp),
              label: 'المسابقات'.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية'.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'السجل'.tr,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'السجل'.tr,
            ),
          ],
        ),
      ),*/
    );
  }
}
