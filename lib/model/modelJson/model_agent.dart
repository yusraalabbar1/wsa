// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Agent welcomeFromJson(String str) => Agent.fromJson(json.decode(str));

String welcomeToJson(Agent data) => json.encode(data.toJson());

class Agent {
  Agent({
    required this.isSuccess,
    required this.message,
    required this.data,
  });

  bool isSuccess;
  String message;
  List<DataAgent> data;

  factory Agent.fromJson(Map<String, dynamic> json) => Agent(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: List<DataAgent>.from(
            json["data"].map((x) => DataAgent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DataAgent {
  DataAgent({
    required this.name,
    required this.description,
    required this.locationDesc,
    required this.imageUrl,
    required this.active,
    required this.agentImages,
    required this.agentMedia,
    required this.id,
  });

  String name;
  String description;
  String locationDesc;
  String imageUrl;
  bool active;
  List<dynamic> agentImages;
  List<dynamic> agentMedia;
  int id;

  factory DataAgent.fromJson(Map<String, dynamic> json) => DataAgent(
        name: json["name"],
        description: json["description"],
        locationDesc: json["locationDesc"],
        imageUrl: json["imageUrl"],
        active: json["active"],
        agentImages: List<dynamic>.from(json["agentImages"].map((x) => x)),
        agentMedia: List<dynamic>.from(json["agentMedia"].map((x) => x)),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "locationDesc": locationDesc,
        "imageUrl": imageUrl,
        "active": active,
        "agentImages": List<dynamic>.from(agentImages.map((x) => x)),
        "agentMedia": List<dynamic>.from(agentMedia.map((x) => x)),
        "id": id,
      };
}
