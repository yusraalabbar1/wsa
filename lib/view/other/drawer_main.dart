import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/utils/constant/color.dart';

Widget drawerMain(context) {
  return Container(
    color: Color(0xff1A1E2B),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          GetBuilder<homecontroller>(builder: (controller) {
            return (Container(
              alignment: Alignment.topRight,
              width: 44,
              height: 44,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: MyColors.color1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: (controller.savePathImage == null)
                      ? Icon(Icons.image_not_supported)
                      : Image.file(
                          File((controller.savePathImage).path),
                          fit: BoxFit.cover,
                          width: 44,
                          height: 44,
                        ),
                ),
              ),
            ));
          }),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Text(firstNamepref == null ? "name1" : firstNamepref,
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'Almarai')),
          ),
          Text(usernamepref == null ? "users@gmail" : usernamepref,
              style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 10,
                  fontFamily: 'Almarai')),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("الملف الشخصي",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed("sittingProfile");
            },
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.notifications,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("الإشعارات ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed("sittingNotification");
            },
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.lock,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("الأمان والخصوصية",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed("sittingSecurity");
            },
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.code,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("الكود التسويقي",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.question_answer,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("الأسئلة الشائعة",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.contact_page,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("تواصل معنا",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: InkWell(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      child: Text("مشاركة",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Almarai')))
                ],
              ),
            ),
          ),
          InkWell(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Icon(
                    Icons.logout,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Container(
                    child: Text("تسجيل الخروج",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Almarai')))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
