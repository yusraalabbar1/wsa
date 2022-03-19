import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:wst/model/modelJson/result_setting_model.dart';
import 'package:wst/utils/constant/url.dart';

var facebookSitting = "";
var youtubeSitting = "";
var instagramSitting = "";
var whatsupSitting = "";
var telgramSitting = "";
getSettingSpicSocialMediaFacebook() async {
  var request = http.Request('GET', Uri.parse(url_social_media));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var res = await http.Response.fromStream(response);
    setting c = setting.fromJson(jsonDecode(res.body));
    facebookSitting = c.data[0].toJson()["value"];
    print(facebookSitting);
  } else {
    print(response.reasonPhrase);
  }
}

getSettingSpicSocialMediaYouTube() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/setting?settingName=setting.youtube'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var res = await http.Response.fromStream(response);
    setting c = setting.fromJson(jsonDecode(res.body));
    youtubeSitting = c.data[0].toJson()["value"];
    print(youtubeSitting);
  } else {
    print(response.reasonPhrase);
  }
}

getSettingSpicSocialMediaInstagram() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/setting?settingName=setting.Instagram'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var res = await http.Response.fromStream(response);
    setting c = setting.fromJson(jsonDecode(res.body));
    instagramSitting = c.data[0].toJson()["value"];
    print(instagramSitting);
  } else {
    print(response.reasonPhrase);
  }
}

getSettingSpicSocialMediaWhatapp() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/setting?settingName=setting.whatsup'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var res = await http.Response.fromStream(response);
    setting c = setting.fromJson(jsonDecode(res.body));
    whatsupSitting = c.data[0].toJson()["value"];
    print(whatsupSitting);
  } else {
    print(response.reasonPhrase);
  }
}

getSettingSpicSocialMediaTelgram() async {
  var request = http.Request(
      'GET',
      Uri.parse(
          'http://212.24.108.54/wsa/api/setting?settingName=setting.whatsup'));

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var res = await http.Response.fromStream(response);
    setting c = setting.fromJson(jsonDecode(res.body));
    telgramSitting = c.data[0].toJson()["value"];
    print(telgramSitting);
  } else {
    print(response.reasonPhrase);
  }
}
