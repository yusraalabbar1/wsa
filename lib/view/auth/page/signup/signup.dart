import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/model/modeApi/getcountery.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';

import 'package:wst/control/homecontroller.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  homecontroller controller = Get.put(homecontroller());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("signup:************");

    myJsonCity = [];
    getCity(controller.saveCountryid - 1);
  }

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var firstName, midName, lastName;
    return Scaffold(
      body: Stack(
        children: [
          // imageBackgroundContainer(),
          containerMaine(),
          Container(
            decoration: boxDecorationMain(),
            child: Form(
              key: formstate,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  wstContainer(context),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "الاسم",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Center(child:
                        GetBuilder<homecontroller>(builder: (controller) {
                      return (TextFormField(
                        style: TextStyle(color: MyColors.color3),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'احمد',
                        ),
                        validator: (text) {
                          if (text!.length > 15) {
                            return "can not enter bigest than 15";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          // do something
                        },
                        onSaved: (string) {
                          print("on saved");
                          firstName = string;
                          controller.SaveFirstName(string);
                        },
                      ));
                    })),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "اسم الأب",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Center(child:
                        GetBuilder<homecontroller>(builder: (controller) {
                      return (TextFormField(
                        style: TextStyle(color: MyColors.color3),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'احمد',
                        ),
                        onChanged: (value) {
                          // do something
                        },
                        validator: (text) {
                          if (text!.length > 15) {
                            return "can not enter bigest than 15";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onSaved: (string) {
                          print("on saved");
                          midName = string;
                          controller.SaveMidName(string);
                        },
                      ));
                    })),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "الكنية",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                    child: Center(child:
                        GetBuilder<homecontroller>(builder: (controller) {
                      return (TextFormField(
                        style: TextStyle(color: MyColors.color3),
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: 'العبار',
                        ),
                        onChanged: (value) {
                          // do something
                        },
                        validator: (text) {
                          if (text!.length > 15) {
                            return "can not enter bigest than 15";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onSaved: (string) {
                          print("on saved");
                          lastName = string;
                          controller.SaveLastName(string);
                        },
                      ));
                    })),
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      margin: EdgeInsets.only(
                          bottom: 10, right: 30, left: 30, top: 10),
                      child: RaisedButton(
                        color: MyColors.color1,
                        elevation: 10,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: MyColors.color1, width: 2)),
                        onPressed: () {
                          // Navigator.of(context).pushNamed("completSignUp");
                          var formdata = formstate.currentState;
                          if (formdata!.validate()) {
                            formdata.save();
                            Navigator.of(context).pushNamed("completSignUp");
                          }
                        },
                        child: Text(
                          "استمرار",
                          style: TextStyle(
                              fontSize: 13,
                              color: MyColors.color3,
                              fontFamily: 'Almarai'),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(
                            left: 30, right: 50, bottom: 10),
                        child: Text(
                          "هل لديك حساب؟",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "تسجيل الدخول",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed("oldLogin");
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
