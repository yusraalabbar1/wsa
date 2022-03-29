import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/getcountery.dart';
import 'package:wst/model/modeApi/setting_social_media.dart';
import 'package:wst/model/modeApi/setting_time_otp.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/view/auth/widget/themeWst.dart';
import 'package:wst/view/other/gaust/gaust.dart';
import 'package:wst/view/other/home_page.dart';

class startPage extends StatefulWidget {
  startPage({Key? key}) : super(key: key);

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  homecontroller controller = Get.put(homecontroller());

  Future getDeviceDetails() async {
    String identifier = "";

    final DeviceInfoPlugin deviceInfoPlugin = new DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        identifier = build.androidId; //UUID for Android
        controller.SaveDeviceId(identifier);
        print("*********androidId********");
        print(identifier);
        print("*********identifier********");
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        identifier = data.identifierForVendor; //UUID for iOS
        controller.SaveDeviceId(identifier);
        print("*********isIOS********");
        print(identifier);
        print("*********identifier********");
      }
    } on PlatformException {
      print('Failed to get platform version');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("start page:************");
    myJsonCountry = [];
    getCoutery();
    getSettingSpictimeOtp();
    getSettingSpicSocialMediaFacebook();
    getSettingSpicSocialMediaYouTube();
    getSettingSpicSocialMediaInstagram();
    getSettingSpicSocialMediaWhatapp();
    getSettingSpicSocialMediaTelgram();
    getDeviceDetails();
    getSettingPrivasyPolicy();
    // rr();
    // getCity(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // imageBackgroundContainer(),
          containerMaine(),
          Container(
            decoration: boxDecorationMain(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wstContainer1(context),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: const Text(
                    "المحفظة الالكترونية الأشهر في الشرق الأوسط",
                    style: TextStyle(
                        fontSize: 12,
                        color: MyColors.color3,
                        fontFamily: 'Almarai'),
                  ),
                ),
                Center(
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    margin: EdgeInsets.only(
                        bottom: 10, right: 30, left: 30, top: 10),
                    child: RaisedButton(
                      color: MyColors.color2,
                      elevation: 10,
                      splashColor: MyColors.color3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: MyColors.color1, width: 2)),
                      onPressed: () {
                        // Navigator.of(context).pushNamed("login");
                        dialogPrivicy(context);
                      },
                      child: Text(
                        "Creat an Account".tr,
                        style: TextStyle(
                            fontSize: 13,
                            color: MyColors.color3,
                            fontFamily: 'Almarai'),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: buttonStart(MyColors.color1, MyColors.color1,
                      "Login".tr, MyColors.color3, context, "oldLogin"),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => new gaust()),
                          (Route<dynamic> route) => false);
                    },
                    child: Text("Guest".tr,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff707070),
                            fontFamily: 'Almarai')),
                  ),
                )
              ],
            ) /* add child content here */,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "You are agreeing to our terms of service and privacy plicy".tr,
                style: TextStyle(
                    fontSize: 11,
                    color: MyColors.color3,
                    fontFamily: 'Almarai'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dialogPrivicy(context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("privacy policy".tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almarai')),
                SizedBox(
                  height: 10,
                ),
                Text(Privacy.toString(),
                    style: TextStyle(
                        color: MyColors.color2,
                        fontSize: 13,
                        fontFamily: 'Almarai')),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "You are agreeing to our terms of service and privacy plicy?"
                        .tr,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Almarai')),
                SizedBox(
                  height: 30,
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
                        Navigator.of(context).pushReplacementNamed("login");
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
            ),
          );
        });
  }
}
