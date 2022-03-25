import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/allMemberCompitition.dart';
import 'package:wst/model/modeApi/model_compitition.dart';
import 'package:wst/view/other/homeMainScreens/widget_gallary.dart';

Widget pageVote(context) {
  return GetBuilder<homecontroller>(builder: (controller) {
    return (ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        itemCount: MyCompitition.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {
              controller.SaveindexCopititon(index);
              print(index);
              memberInCompt = [];
              allMemberCompitition(MyCompitition[index]['competitionsId']);
              Navigator.of(context).pushNamed("infoVote");
            }),
            child: Card(
              child: Stack(children: [
                Container(
                  height: 123,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/backCompititon.png"),
                          fit: BoxFit.cover)),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 123,
                    color: Color(0xff141E34).withOpacity(0.6),
                    child: Row(
                      children: [
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${MyCompitition[index]['name']}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Almarai'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "صوت الآن في المسابقة",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Almarai'),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/trophy.png"),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "${MyCompitition[index]['awardAmount']}",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Almarai'),
                            )
                          ],
                        ))
                      ],
                    ))
              ]),
            ),
          );
        }));
  });
}
