// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

resultLoginModel welcomeFromJson(String str) =>
    resultLoginModel.fromJson(json.decode(str));

String welcomeToJson(resultLoginModel data) => json.encode(data.toJson());

class resultLoginModel {
  resultLoginModel({
    this.isSuccess,
    this.message,
  });

  bool? isSuccess;
  String? message;

  factory resultLoginModel.fromJson(Map<String, dynamic> json) =>
      resultLoginModel(
        isSuccess: json["isSuccess"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
      };
}

class resultLoginModelData {
  resultLoginModelData({
    this.isSuccess,
    this.message,
    this.token,
    this.data,
  });

  bool? isSuccess;
  String? message;
  String? token;
  Data? data;

  factory resultLoginModelData.fromJson(Map<String, dynamic> json) =>
      resultLoginModelData(
        isSuccess: json["isSuccess"],
        message: json["message"],
        token: json["token"] == null ? "" : json["token"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "token": token,
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.userName,
    this.password,
    this.userType,
    this.firstName,
    this.midName,
    this.lastName,
    this.countryId,
    this.cityId,
    this.telephoneNumber,
    this.active,
  });

  int? id;
  String? userName;
  String? password;
  int? userType;
  String? firstName;
  String? midName;
  String? lastName;
  int? countryId;
  int? cityId;
  String? telephoneNumber;
  bool? active;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? 0 : json["id"],
        userName: json["userName"] == null ? "" : json["userName"],
        password: json["password"] == null ? "" : json["password"],
        userType: json["userType"] == null ? 0 : json["userType"],
        firstName: json["firstName"] == null ? "" : json["firstName"],
        midName: json["midName"] == null ? "" : json["midName"],
        lastName: json["lastName"] == null ? "" : json["lastName"],
        countryId: json["countryId"] == null ? 0 : json["countryId"],
        cityId: json["cityId"] == null ? 0 : json["cityId"],
        telephoneNumber:
            json["telephoneNumber"] == null ? "" : json["telephoneNumber"],
        active: json["active"] == null ? false : json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userName": userName,
        "password": password,
        "userType": userType,
        "firstName": firstName,
        "midName": midName,
        "lastName": lastName,
        "countryId": countryId,
        "cityId": cityId,
        "telephoneNumber": telephoneNumber,
        "active": active,
      };
}
