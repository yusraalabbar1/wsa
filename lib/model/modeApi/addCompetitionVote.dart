import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/modeladdCompitationVote.dart';
import 'package:wst/utils/constant/color.dart';

Future addCompitationVote(idComp, memberId, userId, context) async {
  print(idComp);
  print(memberId);
  print(userId);
  var headers = {
    'Authorization': "Bearer $tokenloginresult",
    'Content-Type': 'application/json'
  };
  var request = http.Request(
      'POST',
      Uri.parse(
          'http://212.24.108.54/wsa/api/Competitions/addCompetitionVote'));
  request.body = json.encode(
      {"CompetitionId": idComp, "MemberId": memberId, "UserId": userId});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  addCompitationVoteModel c =
      addCompitationVoteModel.fromJson(jsonDecode(res.body));
  print(c.isSuccess);
  print(c.message);
  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: "تم التصويت",
              desc: c.message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: MyColors.color1)
          .show();
    } else {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.INFO,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: "لا يمكنك التصويت",
              desc: "انت قمت بالتصويت من قبل في هذه المسابقة",
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: MyColors.color1)
          .show();
    }
  } else {
    print(response.reasonPhrase);
  }
}
