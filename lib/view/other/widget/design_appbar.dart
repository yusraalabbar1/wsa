import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/homeMainScreens/widget_list_notification.dart';

Text title() {
  return Text(
    "WST",
    style: TextStyle(
        fontSize: 28,
        fontFamily: 'HELLO_DENVER_DISPLAY',
        fontWeight: FontWeight.bold,
        color: Colors.white),
  );
}

PickedFile? imageFile = null;
var _selected;
var notif = [
  "نص افتراضي للاشعار الأول",
  "نص افتراضي للاشعار الثاني",
  "نص افتراضي للاشعار الثالث",
  "نص افتراضي للاشعار الرابع"
];
var notifmap = [
  {
    "name": "نص افتراضي للاشعار الأول",
    "id": "1",
    "images": "assets/images/1.png"
  },
  {
    "name": "نص افتراضي للاشعار الثاني",
    "id": "1",
    "images": "assets/images/1.png"
  },
  {
    "name": "نص افتراضي للاشعار الثالث",
    "id": "1",
    "images": "assets/images/1.png"
  },
  {
    "name": "نص افتراضي للاشعار الرابع",
    "id": "1",
    "images": "assets/images/1.png"
  }
];
Row rowAppbar(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            InkWell(
              child: GetBuilder<homecontroller>(builder: (controller) {
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
                              width: 44,
                              height: 44,
                              fit: BoxFit.fitHeight,
                            ),
                    ),
                  ),
                ));
              }),
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            SizedBox(
              width: 5,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                dropdownWidth: 193,
                dropdownMaxHeight: 190,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff1C2948),
                  boxShadow: [
                    BoxShadow(spreadRadius: 0.8),
                  ],
                ),
                customButton: const Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.white,
                ),
                items: notifmap.map((Map map) {
                  return new DropdownMenuItem<String>(
                    value: map["id"].toString(),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "${map["images"].toString()}",
                              height: 25,
                              width: 25,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              map["name"].toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontFamily: 'Almarai'),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                        )
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            )
          ],
        ),
      ),
      logoContainer(context),
    ],
  );
}