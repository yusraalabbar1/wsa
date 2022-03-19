import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/competitionsScreens/widget_page_compititoion.dart';
import 'package:wst/view/other/competitionsScreens/widget_page_vote.dart';
import 'package:wst/view/other/competitionsScreens/widget_tow_button_compitition.dart';
import 'package:wst/view/other/competitionsScreens/widgetc_alItem_compitition.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class competitionsMain extends StatefulWidget {
  competitionsMain({Key? key}) : super(key: key);

  @override
  State<competitionsMain> createState() => _competitionsMainState();
}

class _competitionsMainState extends State<competitionsMain> {
  List filteredUsers = [];

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
            widgetTowButtonCompitition(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: MyColors.color1,
                      ),
                      hintText: 'ابحث عن مسابقة'),
                  onChanged: (string) {
                    setState(() {});
                  },
                ),
              ),
            ),
            //pageCompit(),
            GetBuilder<homecontroller>(builder: (controller) {
              return (controller.i == 0 ? pageCompit() : pageVote(context));
            }),
          ],
        )
      ],
    ));
  }
}
