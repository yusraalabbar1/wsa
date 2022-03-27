import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/addMember.dart';
import 'package:wst/utils/constant/color.dart';
import 'package:wst/utils/constant/url.dart';

// List<Map> addMemberComp = [];

Future addMemberCompitition(context, nick) async {
  homecontroller controller = Get.put(homecontroller());
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request(
      'POST',
      Uri.parse(
          'http://212.24.108.54/wsa/api/Competitions/addCompetitionMember'));
  request.body = json.encode({
    "CompetitionId": controller.saveidComp,
    "UserId": idSaveprefpref,
    "NickName": nick
  });
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  AddMember c = AddMember.fromJson(jsonDecode(res.body));

  print("==============================");
  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      Navigator.of(context).pushNamed("completPersonSub");
      AwesomeDialog(
              context: context,
              dialogType: DialogType.SUCCES,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'تمت المشاركة',
              desc: 'تم التسجيل بنجاح',
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
              desc: c.message,
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Color.fromARGB(255, 241, 222, 44))
          .show();
    }
  } else {
    AwesomeDialog(
            context: context,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            desc: c.message,
            btnOkOnPress: () {},
            btnOkColor: MyColors.color1)
        .show();
    print(response.reasonPhrase);
  }
}
