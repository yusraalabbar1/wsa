import 'dart:convert';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/get_all_social.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/model/modelJson/get_lookup_value.dart';
import 'package:wst/utils/constant/url.dart';

Future addUserMedia(value, id) async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request(
      'POST', Uri.parse('http://212.24.108.54/wsa/api/user/addUserMedia'));
  request.body = json
      .encode({"UserId": idSaveprefpref, "MediaTypeId": id, "Value": value});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
//cotroller
  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
