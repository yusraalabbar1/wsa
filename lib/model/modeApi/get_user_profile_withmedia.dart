import 'package:wst/model/modeApi/login_model.dart';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;

Future getUserProfilWithMedia() async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request(
      'GET', Uri.parse('http://212.24.108.54/wsa/api/user/userProfileDetails'));
  request.body = '''''';
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
