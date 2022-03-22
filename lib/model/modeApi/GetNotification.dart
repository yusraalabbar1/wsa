import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/model_agent.dart';
import 'package:wst/model/modelJson/model_all_notifications.dart';
import 'package:wst/utils/constant/url.dart';
import 'package:wst/view/other/agentsScreens/agents_main.dart';

List<Map> notifmap = [];
Future GetNotification() async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };

  String url =
      'http://212.24.108.54/wsa/api/notification/GetNotification?deviceId=test';
  final response = await http.get(Uri.parse(url));
  allNotificaion c = allNotificaion.fromJson(jsonDecode(response.body));

  if (response.statusCode == 200) {
    for (var i = 0; i < c.data!.length; i++) {
      notifmap.add(c.data![i].toJson());
      print("===========allNotifi=============");
      print(c.data![i].toJson());
      print(notifmap);
      print(notifmap.runtimeType);
    }
  } else {
    print(response.reasonPhrase);
  }
}
