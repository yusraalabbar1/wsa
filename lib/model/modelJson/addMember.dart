import 'dart:convert';

class AddMember {
  AddMember({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  bool isSuccess;
  String message;
  String data;

  factory AddMember.fromJson(Map<String, dynamic> json) => AddMember(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": data,
      };
}
