import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/login_model.dart';

// Future uploadImage(fileName, path) async {
//   var headers = {
//     'Content-Type': 'application/json',
//     'Accept': 'application/json',
//     'Authorization': "Bearer $tokenloginresult"
//   };
//   var request = http.MultipartRequest(
//       'POST', Uri.parse('http://212.24.108.54/wsa/api/user/updateUserProfile'));
//   request.fields.addAll({
//     'userId': idSaveprefpref.toString(),
//   });
//   request.files.add(await http.MultipartFile.fromPath('file', path));
//   request.headers.addAll(headers);
//   http.StreamedResponse response = await request.send();
//   if (response.statusCode == 200) {
//     print(await response.stream.bytesToString());
//   } else {
//     print(response.reasonPhrase);
//   }
// }

Future uploadImage(XFile? file) async {
  Map<String, dynamic> fields = {
    'userId': idSaveprefpref.toString(),
  };

  Map<String, String> headers = {
    "Accept": "application/json",
    "content-type": "application/json",
    "Authorization": "Bearer $tokenloginresult"
  };

  // prepare to calling api
  var uploadImageRequest = MultipartRequest(
      'POST', Uri.parse('http://212.24.108.54/wsa/api/user/updateUserProfile'));

  // add header
  uploadImageRequest.headers.addAll(headers);

  if (file != null) {
    uploadImageRequest.files.add(http.MultipartFile.fromBytes(
        'file', File(file.path.toString()).readAsBytesSync(),
        filename: (file.path.toString().split("/").last)));
  }

  // passing uer data as feild
  fields.forEach((k, v) => uploadImageRequest.fields[k] = v);

  // calling api
  var response = await uploadImageRequest.send();
  final responseString = await response.stream.bytesToString();
  print(response.statusCode);
  if (response.statusCode == 200) {
    var responseBody = jsonDecode(responseString);
    print(responseString);
  } else {}
}
