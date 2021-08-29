// To parse this JSON data, do
//
//     final gameModel = gameModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GameModel gameModelFromJson(String str) => GameModel.fromJson(json.decode(str));

String gameModelToJson(GameModel data) => json.encode(data.toJson());

class GameModel {
  GameModel({
    required this.info,
    required this.cheapestPriceEver,
    required this.deals,
  });

  Info? info;
  CheapestPriceEver? cheapestPriceEver;
  List<Deal>? deals;

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
        cheapestPriceEver: json["cheapestPriceEver"] == null
            ? null
            : CheapestPriceEver.fromJson(json["cheapestPriceEver"]),
        deals: json["deals"] == null
            ? null
            : List<Deal>.from(json["deals"].map((x) => Deal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info == null ? null : info!.toJson(),
        "cheapestPriceEver":
            cheapestPriceEver == null ? null : cheapestPriceEver!.toJson(),
        "deals": deals == null
            ? null
            : List<dynamic>.from(deals!.map((x) => x.toJson())),
      };
}

class CheapestPriceEver {
  CheapestPriceEver({
    required this.price,
    required this.date,
  });

  String price;
  int date;

  factory CheapestPriceEver.fromJson(Map<String, dynamic> json) =>
      CheapestPriceEver(
        price: json["price"] == null ? null : json["price"],
        date: json["date"] == null ? null : json["date"],
      );

  Map<String, dynamic> toJson() => {
        "price": price == null ? null : price,
        "date": date == null ? null : date,
      };
}

class Deal {
  Deal({
    required this.storeId,
    required this.dealId,
    required this.price,
    required this.retailPrice,
    required this.savings,
  });

  String storeId;
  String dealId;
  String price;
  String retailPrice;
  String savings;

  factory Deal.fromJson(Map<String, dynamic> json) => Deal(
        storeId: json["storeID"] == null ? null : json["storeID"],
        dealId: json["dealID"] == null ? null : json["dealID"],
        price: json["price"] == null ? null : json["price"],
        retailPrice: json["retailPrice"] == null ? null : json["retailPrice"],
        savings: json["savings"] == null ? null : json["savings"],
      );

  Map<String, dynamic> toJson() => {
        "storeID": storeId == null ? null : storeId,
        "dealID": dealId == null ? null : dealId,
        "price": price == null ? null : price,
        "retailPrice": retailPrice == null ? null : retailPrice,
        "savings": savings == null ? null : savings,
      };
}

class Info {
  Info({
    required this.title,
    required this.steamAppId,
    required this.thumb,
  });

  String title;
  String steamAppId;
  String thumb;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        title: json["title"] == null ? null : json["title"],
        steamAppId: json["steamAppID"] == null ? null : json["steamAppID"],
        thumb: json["thumb"] == null ? null : json["thumb"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "steamAppID": steamAppId == null ? null : steamAppId,
        "thumb": thumb == null ? null : thumb,
      };
}
