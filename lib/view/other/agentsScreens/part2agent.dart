import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/other/agentsScreens/allagents.dart';
import 'package:wst/view/other/agentsScreens/widgetgallaryforagent.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

Widget part2Agent(context) {
  homecontroller controller = Get.put(homecontroller());
  return ListView(
    //part two
    shrinkWrap: true,
    children: [
      rowAppbar(context),
      GetBuilder<homecontroller>(builder: (controller) {
        return (InkWell(
          onTap: () {
            controller.Saveindexagent(0);
          },
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    controller.Saveindexagent(0);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              Text("الوكلاء",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Almarai')),
            ],
          ),
        ));
      }),
      Card(
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 252,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "http://212.24.108.54/wsaAdmin/images/${allAgent[controller.indexAgent]['imageUrl']}"),
                    fit: BoxFit.cover)),
          ),
        ]),
      ),
      widgetgallaryagent(context),
      Padding(
        padding: const EdgeInsets.all(19.0),
        child: Text(
          "${allAgent[controller.indexAgent]['name']}",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontFamily: 'Almarai'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
        child: Text(
          "${allAgent[controller.indexAgent]['description']}",
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontFamily: 'Almarai'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
        child: Text(
          "${allAgent[controller.indexAgent]['locationDesc']}",
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontFamily: 'Almarai'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(19.0),
        child: Text(
          "وسائل التواصل الإجتماعي",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontFamily: 'Almarai'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 19, right: 19),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: MyColors.color1,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Text("الموقع ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Almarai')),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: Color(0xffF1B462),
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Text("اتصال",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Almarai')),
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 19, right: 19),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: MyColors.color1,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Text("فيسبوك",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Almarai')),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: Color(0xff1FC176),
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Text("واتساب",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Almarai')),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: RaisedButton(
                color: MyColors.color1,
                elevation: 10,
                splashColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                onPressed: () {},
                child: Text("تلجرام",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Almarai')),
              ),
            ),
            SizedBox(
              width: 5,
            ),
          ],
        ),
      )
    ],
  );
}
