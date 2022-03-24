import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/getDataSignup.dart';
import 'package:wst/model/modelJson/result_sign_up.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/utils/constant/url.dart';

int userId = 0;
Future send_inf_signup(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, context) async {
  print(t1);
  print(t2);
  print(t3);
  print(t4);
  print(t5);
  print(t6);
  print(t7);
  print(t8);

  var headers = {'Content-Type': 'application/json'};
  var url = url_signu;
  var data = {
    "UserName": t1,
    "Password": t2,
    "FirstName": t3,
    "MidName": t4,
    "LastName": t5,
    "CountryId": t6,
    "CityId": t7,
    "TelephoneNumber": t8,
    "UserMarketingCode": t9,
    "DeciveId": t10
  };
  var request = http.Request('POST', Uri.parse(url));
  request.body = json.encode(data);
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);

  if (response.statusCode == 200) {
    resultSignUp c = resultSignUp.fromJson(jsonDecode(res.body));

    if (c.isSuccess == true) {
      getDataSignUp d = getDataSignUp.fromJson(jsonDecode(res.body));
      userId = d.data.toJson()["userId"];
      print(userId);
      print("yesssssssssssssssssssssssss");
      Navigator.of(context).pushNamed("PinCodeVerificationScreen");
      print(res.body);
    } else {
      AwesomeDialog(
              context: context,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              desc: "هذا المستخدم موجود يرجى تغيير الاسم",
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: MyColors.color1)
          .show();
    }
  } else {
    print("errrrrrrrrrrrrrrrrror");
    print(response.reasonPhrase);
  }
}
