import 'package:game_prices_deals_flutter_app/data_app/game_api_client.dart';
import 'package:game_prices_deals_flutter_app/locator.dart';
import 'package:game_prices_deals_flutter_app/models_app/game_model.dart';

class GameRepository {
  GameApiClient gameApiClient = locator<GameApiClient>();
  Future<GameModel?> getGame(String game) async {
    return null;
  }
}
