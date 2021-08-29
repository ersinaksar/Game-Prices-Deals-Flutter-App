import 'package:flutter/cupertino.dart';
import 'package:game_prices_deals_flutter_app/data_app/game_api_client.dart';
import 'package:game_prices_deals_flutter_app/locator.dart';
import 'package:game_prices_deals_flutter_app/models_app/game_model.dart';

class GameRepository {
  GameApiClient gameApiClient = locator<GameApiClient>();

  Future<GameModel> getGame(String game) async {
    debugPrint("GameRepository ------------- game: " + game);

    var gameID = await gameApiClient.getGameID(game);
    var id = int.parse(gameID);
    debugPrint("GameRepository -------------");
    return await gameApiClient.getGame(id);
  }
  /*Future<GameModel?> getGame(String game) async {
    final int gameID = await gameApiClient.getGameID(game);
    return await gameApiClient.getGame(gameID);
  }*/
}
