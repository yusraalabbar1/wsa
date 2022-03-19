import 'dart:convert';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/login_model.dart';

Future uploadImage() async {
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.MultipartRequest(
      'POST', Uri.parse('http://localhost:50035/api/user/updateUserProfile'));
  request.fields.addAll({
    'userId': idSaveprefpref,
  });
  request.files.add(await http.MultipartFile.fromPath('file',
      '/C:/Users/ASUS/Pictures/9e5f8052-9ec2-45a2-b1a4-acc195da5fe4.png'));
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  } else {
    print(response.reasonPhrase);
  }
}
