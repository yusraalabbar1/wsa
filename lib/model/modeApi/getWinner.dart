import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/modelGetWinner.dart';
import 'package:wst/utils/constant/url.dart';

List<Map> winner = [];
Future getWinner() async {
  homecontroller controller = Get.put(homecontroller());

  /**************************** */
  var headers = {'Authorization': "Bearer $tokenloginresult"};
  var request = http.Request(
      'GET', Uri.parse('http://212.24.108.54/wsa/api/Competitions/getWinner'));
  request.body = '''''';
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  modelGetWin c = modelGetWin.fromJson(jsonDecode(res.body));

  print(c.isSuccess);
  print("==============================");
  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      for (var i = 0; i < c.data.length; i++) {
        winner.add(c.data[i].toJson());
      }
      controller.SaveListWinner(winner);
    } else {
      print(response.reasonPhrase);
    }
  }
}
