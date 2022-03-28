import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/get_all_social.dart';
import 'package:wst/model/modeApi/get_user_profile_withmedia.dart';
import 'package:wst/model/modeApi/update_user.dart';
import 'package:wst/utils/constant/color.dart';

import 'package:shared_preferences/shared_preferences.dart';

GlobalKey<FormState> formstate = new GlobalKey<FormState>();
homecontroller controller = Get.find();
dialogForInsta(context) async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  var markInsta = pref.getInt('markInsta');
  var insta;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Form(
              key: formstate,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("هل تريد اجراء تعديل على رابط انستغرام?",
                      style: TextStyle(
                          color: MyColors.color2,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                  SizedBox(
                    height: 30,
                  ),
                  GetBuilder<homecontroller>(builder: (controller) {
                    return (TextFormField(
                      style: TextStyle(
                          color: MyColors.color3,
                          fontFamily: 'Almarai',
                          fontSize: 10),
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(),
                      validator: (text) {
                        if (text!.length > 40) {
                          return "can not enter bigest than 15";
                        }
                        if (text.length < 2) {
                          return "can not enter less than 2";
                        }
                        return null;
                      },
                      onSaved: (string) {
                        print("on saved");
                        insta = string;
                      },
                    ));
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        color: MyColors.color1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(color: MyColors.color1, width: 2)),
                        child: Text("موافق",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Almarai')),
                        onPressed: () {
                          var formdata = formstate.currentState;
                          if (formdata!.validate()) {
                            formdata.save();
                            print(markInsta);
                            //getAllSocialMidea("Instgram", insta, markInsta);
                            print("valid");
                            getUserProfilWithMedia(insta, 6);
                            Navigator.of(context).pop();
                            // updateUser(first, mid, last, tel);
                            // Navigator.of(context).pop();
                          }
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        color: Color.fromARGB(255, 231, 38, 64),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                                color: Color.fromARGB(255, 231, 38, 64),
                                width: 2)),
                        child: Text("إلغاء",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Almarai')),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  )
                ],
              )),
        );
      });
}
