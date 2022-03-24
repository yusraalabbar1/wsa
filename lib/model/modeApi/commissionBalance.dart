import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/modelCommissionBalance.dart';
import 'package:wst/model/modelJson/userBalanceModel.dart';
import 'package:wst/model/modelJson/userBalancmodelLog.dart';

var balancecommission;
Future comissionBalanc() async {
  homecontroller controller = Get.put(homecontroller());
  var headers = {'Authorization': "Bearer $tokenloginresult"};
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/user/userCommissionBalances?UserId=${idSaveprefpref}'));
  request.body = '''''';
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  var res = await http.Response.fromStream(response);
  modellComissionBalance c =
      modellComissionBalance.fromJson(jsonDecode(res.body));
  print("==============================");
  print(c.isSuccess);
  print("==============================");
  if (response.statusCode == 200) {
    if (c.isSuccess == true) {
      balancecommission = c.data.commissionBalance;
      print(c.data.commissionBalance);
    } else {}
  } else {
    print(response.reasonPhrase);
  }
}
