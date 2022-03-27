import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/modelPostQuistionWinner.dart';
import 'package:wst/utils/constant/color.dart';

Future postQuistionWiner(compId, ans1, ans2, context) async {
  var headers = {
    'Authorization': "Bearer $tokenloginresult",
    'Content-Type': 'application/json'
  };
  var request = http.Request(
      'POST',
      Uri.parse(
          'http://212.24.108.54/wsa/api/Competitions/addCompetitionWinnerAnswer'));
  request.body = json.encode([
    {"CompetitionMemberId": compId, "WinnerQuestionId": 1, "Answer": ans1},
    {"CompetitionMemberId": compId, "WinnerQuestionId": 2, "Answer": ans2}
  ]);
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  modelQuistionAnswer c = modelQuistionAnswer.fromJson(jsonDecode(res.body));
  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'succes',
              desc: c.message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: MyColors.color1)
          .show();
    } else {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'error',
              desc: c.message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
