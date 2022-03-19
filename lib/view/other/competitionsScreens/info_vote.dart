import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/competitionsScreens/widget_all_person_cont.dart';
import 'package:wst/view/other/competitionsScreens/widgetc_alItem_compitition.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class infoVote extends StatefulWidget {
  infoVote({Key? key}) : super(key: key);

  @override
  State<infoVote> createState() => _infoVoteState();
}

class _infoVoteState extends State<infoVote> {
  homecontroller controller = Get.put(homecontroller());
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
                                "${allCompitition[controller.indexCopititon]["nameCompitition"]}",
                                style: TextStyle(
                                    color: MyColors.color3,
                                    fontSize: 14,
                                    fontFamily: 'Almarai'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "صوت الآن في المسابقة",
                                style: TextStyle(
                                    color: MyColors.color3,
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
                                "${allCompitition[controller.indexCopititon]["mony"]}",
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
            widgetConst(context),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text(
                "${allCompitition[controller.indexCopititon]["nameCompitition"]}",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 17,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
              child: Text(
                "${allCompitition[controller.indexCopititon]["description"]}",
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
}
