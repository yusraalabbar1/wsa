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

    getCoutery();
    getSettingSpictimeOtp();
    getSettingSpicSocialMediaFacebook();
    getSettingSpicSocialMediaYouTube();
    getSettingSpicSocialMediaInstagram();
    getSettingSpicSocialMediaWhatapp();
    getSettingSpicSocialMediaTelgram();
    getDeviceDetails();
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
                  child: buttonStart(MyColors.color2, MyColors.color1,
                      "سجل الان في التطبيق", MyColors.color3, context, "login"),
                ),
                Center(
                  child: buttonStart(MyColors.color1, MyColors.color1,
                      "تسجيل الدخول", MyColors.color3, context, "oldLogin"),
                ),
              ],
            ) /* add child content here */,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                "جميع الحقوق محفوظة لدى التطبيق 2021",
                style: TextStyle(
                    fontSize: 13,
                    color: MyColors.color3,
                    fontFamily: 'Almarai'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
