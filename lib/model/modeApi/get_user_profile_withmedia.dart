import 'package:wst/model/modeApi/add_user_media.dart';
import 'package:wst/model/modeApi/login_model.dart';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:wst/control/homecontroller.dart';
import 'package:http/http.dart' as http;
import 'package:wst/model/modeApi/return_id_froml_email.dart';
import 'package:wst/model/modeApi/update_user_media.dart';
import 'package:wst/model/modelJson/midel_getUserWithMedia.dart';

List<Map> mediaUser = [];
Future getUserProfilWithMedia(mediaValue, id) async {
  homecontroller controller = Get.put(homecontroller());
  var headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer $tokenloginresult"
  };
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/user/userProfileDetails?UserId=${idSaveprefpref}'));
  request.body = '''''';
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  var res = await http.Response.fromStream(response);
  ModeGetUserProfileWithMedia c =
      ModeGetUserProfileWithMedia.fromJson(jsonDecode(res.body));
  int index = 0;
  if (response.statusCode == 200) {
    // print(await response.stream.bytesToString());
    if (c.isSuccess == true) {
      for (var k in c.data.userMedia) {
        mediaUser.add(k.toJson());
        if (k.id == 6) {
          controller.SaveLinkInsta(k.value);
        } else if (k.id == 7) {
          controller.SaveLinkFace(k.value);
        } else if (k.id == 8) {
          controller.SaveLinktele(k.value);
        }
      }
      print("éééééééééééééémediaUserééééééééééé");
      print(mediaUser);
      if (mediaUser == []) {
        //add
        print("empty...add");
        addUserMedia(mediaValue, id);
        index = 1;
      } else {
        for (var k in c.data.userMedia) {
          if (k.id == id) {
            print(" find code ...update");
            //update
            updaeUserMedia(id, mediaValue);
            index = 1;
            break;
          } else {
            print("not find code ...");
          }
        }
      }
      if (index == 0) {
        //add
        print("not found...index 0 ,add");
        addUserMedia(mediaValue, id);
      }
    } else {
      print(response.reasonPhrase);
    }
  }
}
