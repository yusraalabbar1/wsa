import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:wst/control/homecontroller.dart';
import 'package:wst/model/modelJson/resul_login_model.dart';
import 'package:wst/utils/constant/url.dart';
import 'package:wst/view/other/home_page.dart';

var successloginresult;
var tokenloginresult;
var dataloginresult;
var countryIdSaveprf;
var cityIdSavepref;
var idSaveprefpref;
var usernamepref;
var firstNamepref;
var midNamepref;
var lastNamepref;
var phonepref;
var passPref;
var isLogin;
var imageProfileSavepref;
var marketingCodeeSavepref;
Future send_inf_login(email, password, context) async {
  homecontroller controller = Get.put(homecontroller());
  print("========information in function==========");
  print(email);
  print(password);
  print("========================");
  var headers = {
    'Authorization': 'Bearer ',
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse(url_login));
  request.body =
      json.encode({"UserName": email, "Password": password, "Token": ""});
  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  var res = await http.Response.fromStream(response);
  resultLoginModel c = resultLoginModel.fromJson(jsonDecode(res.body));
  successloginresult = c.toJson()["isSuccess"];
  print("5555555555555555555555555555555");
  print(successloginresult);
  /************************************** */
  if (response.statusCode == 200) {
    if (successloginresult == true) {
      resultLoginModelData d =
          resultLoginModelData.fromJson(jsonDecode(res.body));
      tokenloginresult = d.toJson()["token"];
      dataloginresult = d.toJson()["data"];
      print(successloginresult);
      print(tokenloginresult);
      print(dataloginresult);
      /************************************** */

      /************************************** */

      print(dataloginresult["id"]);
      SharedPreferences presid = await SharedPreferences.getInstance();
      presid.setInt("id", dataloginresult["id"]);
      idSaveprefpref = presid.getInt('id');
      controller.SaveUserId(idSaveprefpref);
      /////////////////////////////////
      print(dataloginresult["userName"]);
      SharedPreferences presuser = await SharedPreferences.getInstance();
      presuser.setString('userName', dataloginresult["userName"]);
      usernamepref = presuser.getString('userName');
      controller.SaveUserName(usernamepref);
/////////////////////////////////
      print(dataloginresult["password"]);
      SharedPreferences prespass = await SharedPreferences.getInstance();
      prespass.setString('password', dataloginresult["password"]);
      passPref = prespass.getString('password');
      controller.SaveNewPassword(passPref);
      /////////////////////////////////
      print(dataloginresult["userType"]);
      SharedPreferences prestype = await SharedPreferences.getInstance();
      prestype.setInt('userType', dataloginresult["userType"]);

/////////////////////////////////
      print(dataloginresult["firstName"]);
      SharedPreferences presfirst = await SharedPreferences.getInstance();
      presfirst.setString('firstName', dataloginresult["firstName"]);
      firstNamepref = presfirst.getString('firstName');
      controller.SaveFirstName(firstNamepref);
/////////////////////////////////
      print(dataloginresult["midName"]);
      SharedPreferences presmid = await SharedPreferences.getInstance();
      presmid.setString('midName', dataloginresult["midName"]);
      midNamepref = presmid.getString('midName');
      controller.SaveMidName(midNamepref);
/////////////////////////////////
      print(dataloginresult["lastName"]);
      SharedPreferences preslast = await SharedPreferences.getInstance();
      preslast.setString('lastName', dataloginresult["lastName"]);
      lastNamepref = preslast.getString('lastName');
      controller.SaveLastName(lastNamepref);
/////////////////////////////////
      print(dataloginresult["countryId"]);
      SharedPreferences prescountry = await SharedPreferences.getInstance();
      prescountry.setInt('countryId', dataloginresult["countryId"]);
      countryIdSaveprf = prescountry.getInt('countryId');
      controller.SaveCountryid(countryIdSaveprf);
/////////////////////////////////
      print(dataloginresult["cityId"]);
      SharedPreferences prescity = await SharedPreferences.getInstance();
      prescity.setInt('cityId', dataloginresult["cityId"]);
      cityIdSavepref = prescity.getInt('cityId');
      controller.SavecityId(cityIdSavepref);
      /////////////////////////////////
      print(dataloginresult["imageProfile"]);
      SharedPreferences presimageProfile =
          await SharedPreferences.getInstance();
      presimageProfile.setString(
          'imageProfile', dataloginresult["imageProfile"]);
      imageProfileSavepref = presimageProfile.getString('imageProfile');
      controller.SaveimageProfile(imageProfileSavepref);
      /////////////////////////////////
      SharedPreferences presMarket = await SharedPreferences.getInstance();
      presMarket.setString('marketingCode', dataloginresult["marketingCode"]);
      marketingCodeeSavepref = presMarket.getString('marketingCode');
      controller.SavemarketingCodeeSavepref(marketingCodeeSavepref);
/////////////////////////////////
      ///
      print(dataloginresult["telephoneNumber"]);
      SharedPreferences presphone = await SharedPreferences.getInstance();
      presphone.setString(
          'telephoneNumber', dataloginresult["telephoneNumber"]);
      phonepref = presphone.getString('telephoneNumber');
      controller.SaveNumberPhone(phonepref);

      print("IsLogin: ****");
      SharedPreferences presIsLogin = await SharedPreferences.getInstance();
      presIsLogin.setBool("isLogin", true);
      isLogin = presIsLogin.getBool('isLogin')!;
      print("******************************");
      print(isLogin);
      print("******************************");
      // controller.SaveUsersIsLogin(isLogin);
      // Navigator.of(context).pushReplacementNamed("homePage");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => new homePage()),
          (Route<dynamic> route) => false);
    } else {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.RIGHSLIDE,
              headerAnimationLoop: true,
              title: 'Error',
              desc: 'user name or password error',
              btnOkOnPress: () {},
              btnOkIcon: Icons.cancel,
              btnOkColor: Colors.red)
          .show();
    }
  } else {
    print(response.reasonPhrase);
    AwesomeDialog(
            context: context,
            dialogType: DialogType.ERROR,
            animType: AnimType.RIGHSLIDE,
            headerAnimationLoop: true,
            title: 'Error',
            desc: 'network error',
            btnOkOnPress: () {},
            btnOkIcon: Icons.cancel,
            btnOkColor: Colors.red)
        .show();
  }
}
