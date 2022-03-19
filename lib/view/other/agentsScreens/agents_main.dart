import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/agentsScreens/allagents.dart';
import 'package:wst/view/other/agentsScreens/part1agent.dart';
import 'package:wst/view/other/agentsScreens/part2agent.dart';
import 'package:wst/view/other/agentsScreens/widgetTowButtonagent.dart';
import 'package:wst/view/other/agentsScreens/widgetgallaryforagent.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class agentsMain extends StatefulWidget {
  agentsMain({Key? key}) : super(key: key);

  @override
  State<agentsMain> createState() => _agentsMainState();
}

class _agentsMainState extends State<agentsMain> {
  List filteredUsers = [];

  @override
  void initState() {
    super.initState();
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
        GetBuilder<homecontroller>(builder: (controller) {
          return (controller.i_agent == 0
              ? part1agent(context)
              : part2Agent(context));
        })
      ],
    ));
  }
}
