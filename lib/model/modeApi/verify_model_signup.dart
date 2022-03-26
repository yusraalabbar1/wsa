import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/modelVerifOtp.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/utils/constant/url.dart';

verifyModel(userId, otp, context) async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request('POST', Uri.parse(otp_verify_signup));
  request.body = json.encode({"UserId": userId, "Otp": otp.toString()});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  modelVerifyOtp c = modelVerifyOtp.fromJson(jsonDecode(res.body));

  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      print("OTP Verified!!");
      Navigator.of(context).popAndPushNamed("oldLogin");
    } else {
      AwesomeDialog(
              context: context,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              desc: c.message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: MyColors.color1)
          .show();
    }
  } else {
    print(response.reasonPhrase);
  }
}
