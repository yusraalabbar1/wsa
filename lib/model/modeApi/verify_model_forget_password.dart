import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/change_password.dart';
import 'package:wst/model/modeApi/generate_otp.dart';
import 'package:wst/model/modeApi/send_inf_signup.dart';
import 'package:wst/utils/constant/url.dart';

verifyModelPassword(userId, otp, context, newPassWord) async {
  if (passwordOtp == otp) {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request('POST', Uri.parse(otp_verify_pass));
    request.body = json.encode({"UserId": userId, "Otp": otp.toString()});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      changePasswordModel(userId, newPassWord);
      Navigator.of(context).popAndPushNamed("oldLogin");
      print("OTP Verified!!");
    } else {
      print(response.reasonPhrase);
    }
  } else {
    AwesomeDialog(
        context: context,
        dialogType: DialogType.ERROR,
        animType: AnimType.RIGHSLIDE,
        headerAnimationLoop: true,
        title: 'Error',
        desc: 'otp error',
        btnOkOnPress: () {},
        btnOkIcon: Icons.cancel,
        btnOkColor: Colors.red)
      ..show();
  }
}
