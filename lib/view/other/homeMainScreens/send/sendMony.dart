import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/rechargeBalanceFromUserToUser.dart';
import 'package:wst/model/modeApi/userBalance.dart';
import 'package:wst/utils/constant/color.dart';

class sendMony extends StatefulWidget {
  sendMony({Key? key}) : super(key: key);

  @override
  State<sendMony> createState() => _sendMonyState();
}

class _sendMonyState extends State<sendMony> {
  final formstate = GlobalKey<FormState>();
  var uniqCode;
  var amountSend;
  homecontroller controller = Get.put(homecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: MyColors.color2,
        ),
        Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 100,
                elevation: 0.0,
                backgroundColor: Colors.transparent,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.transparent,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(40),
                                        topLeft: Radius.circular(40),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/background.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Form(
                                      key: formstate,
                                      child: Container(
                                        margin: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 50,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 30, right: 30),
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "المبلغ الذي تريد تحويله",
                                                style: TextStyle(
                                                    color: MyColors.color3,
                                                    fontSize: 14,
                                                    fontFamily: 'Almarai'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            GetBuilder<homecontroller>(
                                                builder: (controller) {
                                              return (TextFormField(
                                                keyboardType:
                                                    TextInputType.number,
                                                style: const TextStyle(
                                                    color: MyColors.color3),
                                                validator: (text) {
                                                  if (text!.length > 40) {
                                                    return "can not enter bigest than 40";
                                                  }
                                                  if (text.length < 1) {
                                                    return "can not enter less than 1";
                                                  }
                                                  return null;
                                                },
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: '00',
                                                ),
                                                onSaved: (string) {
                                                  amountSend = string;
                                                },
                                              ));
                                            }),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 30, right: 30),
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                "أدخل كود التحويل الخاص بالمستقبل",
                                                style: TextStyle(
                                                    color: MyColors.color3,
                                                    fontSize: 14,
                                                    fontFamily: 'Almarai'),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            GetBuilder<homecontroller>(
                                                builder: (controller) {
                                              return (TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                style: const TextStyle(
                                                    color: MyColors.color3),
                                                validator: (text) {
                                                  if (text!.length > 40) {
                                                    return "can not enter bigest than 40";
                                                  }
                                                  if (text.length < 1) {
                                                    return "can not enter less than 1";
                                                  }
                                                  return null;
                                                },
                                                decoration:
                                                    const InputDecoration(
                                                  hintText: 'GDSJ20X',
                                                ),
                                                onSaved: (string) {
                                                  uniqCode = string;
                                                },
                                              ));
                                            }),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 30, right: 30),
                                              child: Row(
                                                children: [
                                                  Text("رصيدك الحالي",
                                                      style: TextStyle(
                                                          color:
                                                              MyColors.color3,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Almarai')),
                                                  Text(
                                                      balanceForUser.toString(),
                                                      style: TextStyle(
                                                          color:
                                                              MyColors.color3,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Almarai')),
                                                  Text(" دولار",
                                                      style: TextStyle(
                                                          color:
                                                              MyColors.color3,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Almarai'))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: 60,
                                              margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                  right: 30,
                                                  left: 30,
                                                  top: 20),
                                              child: RaisedButton(
                                                color: MyColors.color1,
                                                elevation: 10,
                                                splashColor: MyColors.color3,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    side: BorderSide(
                                                        color: MyColors.color1,
                                                        width: 2)),
                                                onPressed: () {
                                                  var formdata =
                                                      formstate.currentState;
                                                  if (formdata!.validate()) {
                                                    formdata.save();
                                                    rechargeBalanceFromUserToUser(
                                                        context,
                                                        uniqCode,
                                                        double.parse(
                                                            amountSend));
                                                    // Navigator.of(context)
                                                    //     .pushNamed(
                                                    //         "CompletsendMoney");
                                                  } else {
                                                    print(
                                                        "not validddddddddddddddd");
                                                  }
                                                },
                                                child: const Text(
                                                  "استمرار",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: MyColors.color3,
                                                      fontFamily: 'Almarai'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          // left: 46,
                          top: 0.0,
                          left: (MediaQuery.of(context).size.width) / 2 - 31,

                          // (background container size) - (circle height / 2)
                          child: Center(
                            child: Container(
                              height: 84.0,
                              width: 84.0,
                              child: Icon(
                                Icons.money_rounded,
                                size: 40,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(255, 201, 75, 134)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

Widget buildSliverAppBar() {
  return SliverAppBar(
    expandedHeight: 10,
    elevation: 0.0,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      background: Hero(
        tag: 1,
        child: Container(
          color: Colors.transparent,
        ),
      ),
    ),
  );
}
