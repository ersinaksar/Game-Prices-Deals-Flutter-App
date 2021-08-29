import 'package:flutter/cupertino.dart';
import 'package:game_prices_deals_flutter_app/models_app/game_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GameApiClient {
  static const baseURL = "https://www.cheapshark.com";
  final http.Client httpClient = http.Client();

  Future<String> getGameID(String gameName) async {
    final gameURL = baseURL + "/api/1.0/games?title=" + gameName;
    //var url = Uri.https(baseURL, "/api/1.0/games?title=", {'title': gameName});
    Uri url = Uri.parse(gameURL);
    final incomingAnswer = await httpClient.get(url);

    if (incomingAnswer.statusCode != 200) {
      throw Exception("Data could not be brought");
    }
    final incomingAnswerJSON = jsonDecode(incomingAnswer.body) as List;
    var id = incomingAnswerJSON[0]["gameID"];
    debugPrint("Oyun ID si ---------------- " + id.toString());
    var intid = int.parse(id);
    //return incomingAnswerJSON[0]["gameID"];
    return id;
  }

  Future<GameModel> getGame(int gameID) async {
    debugPrint("GetGame Fonksiyonu ----------------------" + gameID.toString());
    final gameDealsURL = baseURL + "/api/1.0/games?id=$gameID";
    Uri url = Uri.parse(gameDealsURL);
    final gameIncomingAnswer = await httpClient.get(url);
    if (gameIncomingAnswer.statusCode != 200) {
      throw Exception("Data could not be brought");
    }
    final gameIncomingAnswerJSON = jsonDecode(gameIncomingAnswer.body);

    return GameModel.fromJson(gameIncomingAnswerJSON);
  }
}
