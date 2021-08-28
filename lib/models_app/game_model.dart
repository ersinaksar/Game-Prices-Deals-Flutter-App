// To parse this JSON data, do
//
//     final gameModel = gameModelFromJson(jsonString);

import 'dart:convert';

List<GameModel> gameModelFromJson(String str) =>
    List<GameModel>.from(json.decode(str).map((x) => GameModel.fromJson(x)));

String gameModelToJson(List<GameModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GameModel {
  GameModel({
    required this.gameId,
    required this.steamAppId,
    required this.cheapest,
    required this.cheapestDealId,
    required this.gameModelExternal,
    required this.internalName,
    required this.thumb,
  });

  String gameId;
  String steamAppId;
  String cheapest;
  String cheapestDealId;
  String gameModelExternal;
  String internalName;
  String thumb;

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
        gameId: json["gameID"] == null ? null : json["gameID"],
        steamAppId: json["steamAppID"] == null ? null : json["steamAppID"],
        cheapest: json["cheapest"] == null ? null : json["cheapest"],
        cheapestDealId:
            json["cheapestDealID"] == null ? null : json["cheapestDealID"],
        gameModelExternal: json["external"] == null ? null : json["external"],
        internalName:
            json["internalName"] == null ? null : json["internalName"],
        thumb: json["thumb"] == null ? null : json["thumb"],
      );

  Map<String, dynamic> toJson() => {
        "gameID": gameId == null ? null : gameId,
        "steamAppID": steamAppId == null ? null : steamAppId,
        "cheapest": cheapest == null ? null : cheapest,
        "cheapestDealID": cheapestDealId == null ? null : cheapestDealId,
        "external": gameModelExternal == null ? null : gameModelExternal,
        "internalName": internalName == null ? null : internalName,
        "thumb": thumb == null ? null : thumb,
      };
}
