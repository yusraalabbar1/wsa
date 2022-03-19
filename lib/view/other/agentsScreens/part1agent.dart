import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/api_all_agents.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/other/agentsScreens/widgetTowButtonagent.dart';

import '../widget/design_appbar.dart';

Widget part1agent(context) {
  return ListView(
    //part one
    shrinkWrap: true,
    children: [
      rowAppbar(context),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: MyColors.color1,
                ),
                hintText: 'ابحث عن وكيلك المفضل أو وكيل في منطقتك'),
            onChanged: (string) {},
          ),
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                "مصر",
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'Almarai'),
              ),
              textColor: Colors.white,
              splashColor: Colors.white,
              color: MyColors.color1,
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
                "القاهرة",
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'Almarai'),
              ),
              textColor: Colors.white,
              splashColor: Colors.white,
              color: MyColors.color1,
            ),
          ),
        ]),
      ),
      GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: allAgent.length,
        itemBuilder: (BuildContext context, int index) {
          return GetBuilder<homecontroller>(builder: (controller) {
            return (InkWell(
                onTap: () {
                  controller.IndexAgent(index);
                  controller.i_agent = 1;
                  //Navigator.of(context).pushNamed("infoAgent");
                },
                child: Column(
                  children: [
                    Container(
                      height: 128,
                      width: 147,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("assets/images/agent.png"),
                              fit: BoxFit.cover)),
                      //width: 500,
                      // width: 80,
                      // height: 218,
                    ),
                    Text("${allAgent[index]['name']}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')),
                    SizedBox(
                      height: 5,
                    ),
                    Text("${allAgent[index]['description']}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'Almarai'))
                  ],
                )));
          });
        },
      )
    ],
  );
}
