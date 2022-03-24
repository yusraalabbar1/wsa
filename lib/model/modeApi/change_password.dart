import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/login_model.dart';
import 'package:wst/utils/constant/url.dart';

Future changePasswordModel(useridForPassword, newPassWord) async {
  var headers = {'Content-Type': 'application/json'};
  var request = http.Request('POST', Uri.parse(url_change_password));
  request.body =
      json.encode({"UserId": useridForPassword, "NewPassword": newPassWord});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
