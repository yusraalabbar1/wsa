import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/addCompetitionVote.dart';
import 'package:wst/model/modeApi/allMemberCompitition.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modeApi/model_compitition.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class infoVote extends StatefulWidget {
  infoVote({Key? key}) : super(key: key);

  @override
  State<infoVote> createState() => _infoVoteState();
}

class _infoVoteState extends State<infoVote> {
  homecontroller controller = Get.put(homecontroller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // memberInCompt = null;
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
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Card(
                child: Stack(children: [
                  Container(
                    width: 352,
                    height: 123,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/backCompititon.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                      // width: 300,
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
                                    color: MyColors.color3,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Almarai'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  MyCompitition[controller.indexCopititon]
                                              ["isFinish"] ==
                                          true
                                      ? "المسابقة منتهية "
                                      : "صوت الآن في المسابقة",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Almarai'),
                                ),
                              ),
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
                                "${MyCompitition[controller.indexCopititon]["awardAmount"]}",
                                style: TextStyle(
                                    color: MyColors.color3,
                                    fontSize: 14,
                                    fontFamily: 'Almarai'),
                              )
                            ],
                          ))
                        ],
                      ))
                ]),
              ),
            ),
            GetBuilder<homecontroller>(builder: (controller) {
              return (controller.savememberInCompt == null
                  ? Text("loading..")
                  : MyCompitition[controller.indexCopititon]["isFinish"] == true
                      ? Text("")
                      : widgetConst(
                          context,
                          MyCompitition[controller.indexCopititon]
                              ["competitionsId"]));
            }),

            // widgetConst(context),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text(
                "${MyCompitition[controller.indexCopititon]["name"]}",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 17,
                    fontFamily: 'Almarai'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
              child: Text(
                "${MyCompitition[controller.indexCopititon]["description"]}",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 13,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text(
                "شارك المسابقة",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 17,
                    fontFamily: 'Almarai'),
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
                      splashColor: MyColors.color3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed: () {},
                      child: Text("فيسبوك",
                          style: TextStyle(
                              color: MyColors.color3,
                              fontSize: 14,
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
                              color: MyColors.color3,
                              fontSize: 14,
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
                      splashColor: MyColors.color3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      onPressed: () {},
                      child: Text("تلجرام",
                          style: TextStyle(
                              color: MyColors.color3,
                              fontSize: 14,
                              fontFamily: 'Almarai')),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        )
      ],
    ));
  }

  Widget widgetConst(context, id) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          height: 35,
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15.0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: MyColors.color1,
                  ),
                  hintText: 'ابحث عن متسابق',
                  hintStyle: TextStyle(fontSize: 10, color: MyColors.color3)),
              onChanged: (string) {},
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          // color: Colors.white,
          height: 183,
          width: MediaQuery.of(context).size.width,

          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: memberInCompt.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 120,
                          color: Colors.transparent,
                        ),
                        Expanded(
                          child: Container(
                            height: 161,
                            width: 108,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomLeft: Radius.circular(40),
                              ),
                              color: Colors.primaries[
                                      Random().nextInt(Colors.primaries.length)]
                                  .withOpacity(0.5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${controller.savememberInCompt[index]['nickName']}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Almarai'),
                                ),
                                Text(
                                  "رقم",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Almarai'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color.fromARGB(255, 83, 101, 143),
                                            Color(0xff414D72)
                                          ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "(" +
                                      "${controller.savememberInCompt[index]['memberNo']}" +
                                      ")",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 21,
                                      fontFamily: 'Almarai'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: RaisedButton(
                                    onPressed: () {
                                      addCompitationVote(
                                          id,
                                          controller.savememberInCompt[index]
                                              ['id'],
                                          idSaveprefpref,
                                          context);
                                    },
                                    child: Text("vote"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Positioned(
                      left: 30,
                      top: 0.0,
                      // (background container size) - (circle height / 2)
                      child: Center(
                        child: Container(
                          child: InkWell(
                            child: Image.asset(
                              "assets/images/1.png",
                              height: 56.0,
                              width: 56.0,
                            ),
                          ),
                          height: 56.0,
                          width: 56.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff1C2948)),
                        ),
                      ),
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
