import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/allMemberCompitition.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/widget/design_appbar.dart';

class infoCompet extends StatefulWidget {
  infoCompet({Key? key}) : super(key: key);

  @override
  State<infoCompet> createState() => _infoCompetState();
}

class _infoCompetState extends State<infoCompet> {
  homecontroller controller = Get.put(homecontroller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMemberCompitition(controller.saveidComp);
  }

  @override
  Widget build(BuildContext context) {
    homecontroller controller = Get.put(homecontroller());
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
                                "${controller.nameComp}",
                                style: TextStyle(
                                    color: MyColors.color3,
                                    fontSize: 14,
                                    fontFamily: 'Almarai'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${controller.savecurrentTourName}",
                                style: TextStyle(
                                    color: MyColors.color3,
                                    fontSize: 14,
                                    fontFamily: 'Almarai'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "الوقت المتبقي ",
                                    style: TextStyle(
                                        color: MyColors.color3,
                                        fontSize: 14,
                                        fontFamily: 'Almarai'),
                                  ),
                                  Text(
                                    "${controller.savecurrentTourTimeLimit}",
                                    style: TextStyle(
                                        color: MyColors.color3,
                                        fontSize: 12,
                                        fontFamily: 'Almarai'),
                                  ),
                                  Text(
                                    "دقيقة",
                                    style: TextStyle(
                                        color: MyColors.color3,
                                        fontSize: 11,
                                        fontFamily: 'Almarai'),
                                  ),
                                ],
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
                                controller.monyrComp.toString(),
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
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text(
                "${controller.nameComp}",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 17,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
              child: Text(
                "${controller.discrpComp}",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 13,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text(
                "كيف أشحن رصيد داخل التطبيق ؟",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 17,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23, top: 5),
              child: Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.",
                style: TextStyle(
                    color: MyColors.color3,
                    fontSize: 13,
                    fontFamily: 'Almarai'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Container(
                height: 60,
                child: RaisedButton(
                  color: MyColors.color1,
                  elevation: 10,
                  splashColor: MyColors.color3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(color: MyColors.color1, width: 2)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("personSub");
                  },
                  child: Text("اشتراك",
                      style: TextStyle(
                          color: MyColors.color3,
                          fontSize: 17,
                          fontFamily: 'Almarai')),
                ),
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
                      splashColor: Colors.white,
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
                      splashColor: MyColors.color3,
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
                      splashColor: Colors.white,
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
