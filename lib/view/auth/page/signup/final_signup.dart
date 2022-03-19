import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/send_inf_signup.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:http/http.dart' as http;

class finalLogin extends StatefulWidget {
  finalLogin({Key? key}) : super(key: key);

  @override
  State<finalLogin> createState() => _finalLoginState();
}

class _finalLoginState extends State<finalLogin> {
  bool isChecked = false;

  homecontroller controller = Get.put(homecontroller());
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  var username;
  var password;

  bool _isObscure = true;

  FocusNode myFocusNode = new FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(controller.saveCountryCode);
    print(controller.saveCountryCode);
    print(controller.saveCountryid);
    print(controller.saveEmail);
    print(controller.saveFirstName);
    print(controller.saveLastName);
    print(controller.saveMidName);
    print(controller.saveNumberPhone);
    print(controller.savecityId);
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return MyColors.color1;
      }
      return Colors.black;
    }

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
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "رائع جداً لقد أتممت جميع الخطوات",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "لنختر اليوزر الخاص بك وكلمة المرور",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "اسم المستخدم",
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
                          if (text!.length > 40) {
                            return "can not enter bigest than 40";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onSaved: (string) {
                          print("on saved");
                          username = string;
                          controller.SaveUserName(string);
                        },
                      ));
                    })),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding:
                        const EdgeInsets.only(left: 30, right: 50, bottom: 10),
                    child: Text(
                      "كلمة المرور",
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
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          labelStyle: TextStyle(
                              color: myFocusNode.hasFocus
                                  ? Color(0xffFAB10C)
                                  : Colors.black),
                        ),
                        validator: (text) {
                          if (text!.length > 40) {
                            return "can not enter bigest than 40";
                          }
                          if (text.length < 2) {
                            return "can not enter less than 2";
                          }
                          return null;
                        },
                        onSaved: (string) {
                          print("on saved");
                          password = string;
                          controller.SavePassWord(string);
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
                        onPressed: () async {
                          var formdata = formstate.currentState;
                          if (formdata!.validate()) {
                            formdata.save();
                            controller.userName;
                            controller.passWord;
                            send_inf_signup(
                                controller.userName,
                                controller.passWord,
                                controller.saveFirstName,
                                controller.saveMidName,
                                controller.saveLastName,
                                controller.saveCountryid,
                                controller.savecityId,
                                controller.saveNumberPhone,
                                context);
                          }
                        },
                        child: Text(
                          "سجل الآن",
                          style: TextStyle(
                              fontSize: 13,
                              color: MyColors.color3,
                              fontFamily: 'Almarai'),
                        ),
                      ),
                    ),
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
