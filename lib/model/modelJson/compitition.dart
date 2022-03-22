// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

class comititionModel {
  comititionModel({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  bool isSuccess;
  String message;
  List<Datum> data;

  factory comititionModel.fromJson(Map<String, dynamic> json) =>
      comititionModel(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.competitionsId,
    required this.name,
    required this.description,
    required this.awardAmount,
    required this.amount,
    required this.imageUrl,
    required this.tourOneDate,
    required this.currentTourId,
    required this.currentTourName,
    required this.balance,
    required this.active,
    required this.competitionTours,
  });

  int competitionsId;
  String name;
  String description;
  double awardAmount;
  double amount;
  String imageUrl;
  DateTime tourOneDate;
  dynamic currentTourId;
  dynamic currentTourName;
  double balance;
  bool active;
  List<CompetitionTour> competitionTours;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        competitionsId: json["competitionsId"],
        name: json["name"],
        description: json["description"],
        awardAmount: json["awardAmount"],
        amount: json["amount"],
        imageUrl: json["imageUrl"],
        tourOneDate: DateTime.parse(json["tourOneDate"]),
        currentTourId: json["currentTourId"],
        currentTourName: json["currentTourName"],
        balance: json["balance"],
        active: json["active"],
        competitionTours: List<CompetitionTour>.from(
            json["competitionTours"].map((x) => CompetitionTour.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "competitionsId": competitionsId,
        "name": name,
        "description": description,
        "awardAmount": awardAmount,
        "amount": amount,
        "imageUrl": imageUrl,
        "tourOneDate": tourOneDate.toIso8601String(),
        "currentTourId": currentTourId,
        "currentTourName": currentTourName,
        "balance": balance,
        "active": active,
        "competitionTours":
            List<dynamic>.from(competitionTours.map((x) => x.toJson())),
      };
}

class CompetitionTour {
  CompetitionTour({
    required this.id,
    required this.competitionId,
    required this.competitionToursId,
    required this.name,
    required this.timeLimit,
    required this.order,
    required this.active,
  });

  int id;
  int competitionId;
  int competitionToursId;
  String name;
  int timeLimit;
  int order;
  bool active;

  factory CompetitionTour.fromJson(Map<String, dynamic> json) =>
      CompetitionTour(
        id: json["id"],
        competitionId: json["competitionId"],
        competitionToursId: json["competitionToursId"],
        name: json["name"],
        timeLimit: json["timeLimit"],
        order: json["order"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "competitionId": competitionId,
        "competitionToursId": competitionToursId,
        "name": name,
        "timeLimit": timeLimit,
        "order": order,
        "active": active,
      };
}
