import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/result_sign_up.dart';
import 'package:wst/utils/constant/url.dart';

int userId = 0;
Future send_inf_signup(t1, t2, t3, t4, t5, t6, t7, t8, context) async {
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
    "TelephoneNumber": t8
  };
  var request = http.Request('POST', Uri.parse(url));
  request.body = json.encode(data);
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  resultSignUp c = resultSignUp.fromJson(jsonDecode(res.body));
  userId = c.data.toJson()["userId"];
  print(userId);

  if (response.statusCode == 200) {
    print("yesssssssssssssssssssssssss");
    // print(await response.stream.bytesToString());

    Navigator.of(context).pushNamed("PinCodeVerificationScreen");
    print(res.body);
  } else {
    print("errrrrrrrrrrrrrrrrror");
    print(response.reasonPhrase);
  }
}
