import 'dart:convert';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/login_model.dart';

Future uploadImage(fileName, path) async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.MultipartRequest(
      'POST', Uri.parse('http://212.24.108.54/wsa/api/user/updateUserProfile'));
  request.fields.addAll({
    'userId': idSaveprefpref.toString(),
  });
  request.files.add(await http.MultipartFile.fromPath('image', path));
  request.headers.addAll(headers);
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
