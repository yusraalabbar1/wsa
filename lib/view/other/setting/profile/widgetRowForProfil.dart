import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/other/setting/profile/dialog_edit.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

Widget widgetRowForProfil(context) {
  homecontroller controller = Get.put(homecontroller());

  return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GetBuilder<homecontroller>(builder: (controller) {
        return Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/images/1.png",
                        width: 44,
                        height: 44,
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Text(usernamepref == null ? "" : usernamepref,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Almarai'))),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: 127,
                      height: 37,
                      child: RaisedButton.icon(
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        label: Text(
                          "تغيير الصورة الشخصية",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontFamily: 'Almarai'),
                        ),
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.white,
                        color: Color(0xff464699),
                      ),
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("الإسم الكامل",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          controller.saveFirstName == null
                              ? "name1"
                              : controller.saveFirstName,
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("اسم المستخدم",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          controller.userName == null
                              ? ""
                              : controller.userName,
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("الدولة",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          controller.saveCountryid.toString() == null
                              ? ""
                              : controller.saveCountryid.toString(),
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("رقم الهاتف",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          controller.saveNumberPhone == null
                              ? ""
                              : controller.saveNumberPhone,
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("البريد الإلكتروني",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                          controller.userName == null
                              ? ""
                              : controller.userName + "@gmail.com",
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.topRight,
                  child: Text("رقم الواتساب",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Almarai')),
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("رابط",
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 13,
                              fontFamily: 'Almarai')),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ))
                  ],
                ))
              ],
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color.fromARGB(255, 32, 53, 104),
                        Color(0xff414D72)
                      ]),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              child: Text("تعديل المعلومات",
                  style: TextStyle(
                      color: MyColors.color1,
                      fontSize: 13,
                      fontFamily: 'Almarai')),
              onTap: () {
                showLoading(context);
              },
            )
          ],
        );
      }));
}
