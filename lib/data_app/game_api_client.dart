import 'package:game_prices_deals_flutter_app/models_app/game_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GameApiClient {
  static const baseURL = "https://www.cheapshark.com";
  final http.Client httpClient = http.Client();
  Future<int> getGameID(String gameName) async {
    final gameURL = baseURL + "/api/1.0/games?title=" + gameName;
    //var url = Uri.https(baseURL, "/api/1.0/games?title=", {'title': gameName});
    final incomingAnswer = await httpClient.get(gameURL);

    if (incomingAnswer.statusCode != 200) {
      throw Exception("Data could not be brought");
    }
    final incomingAnswerJSON = jsonDecode(incomingAnswer.body) as List;

    return incomingAnswerJSON[0]["gameID"];
  }

  Future<GameModel> getGame(int gameID) async {
    final gameDealsURL = baseURL + "/api/1.0/games?id=$gameID";
    final gameIncomingAnswe = await httpClient.get(gameDealsURL);
    if (gameIncomingAnswe.statusCode != 200) {
      throw Exception("Data could not be brought");
    }
    final gameIncomingAnswerJSON = jsonDecode(gameIncomingAnswe.body);

    return GameModel.fromJson(gameIncomingAnswerJSON);
  }
}
