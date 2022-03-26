import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/model_compitition.dart';

Widget widgetgallary(context) {
  return GetBuilder<homecontroller>(builder: (controller) {
    return (Container(
      // color: Colors.white,
      margin: EdgeInsets.only(left: 20, right: 20),
      height: 123,
      width: MediaQuery.of(context).size.width,

      child: controller.saveMapCompitition == null
          ? Text("loading...")
          : ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.saveMapCompitition.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: GetBuilder<homecontroller>(builder: (controller) {
                    return (InkWell(
                      onTap: () {
                        controller.SaveindexCopititon(index);
                        Navigator.of(context).pushNamed("infoVote");
                      },
                      child: Card(
                        child: Stack(children: [
                          Container(
                            width: 300,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/backCompititon.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                              width: 300,
                              height: 123,
                              color: Color(0xff141E34).withOpacity(0.6),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "${MyCompitition[controller.indexCopititon]["name"]}",
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
                                        "${MyCompitition[controller.indexCopititon]['awardAmount']}",
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
                    ));
                  }),
                );
              }),
    ));
  });
}
