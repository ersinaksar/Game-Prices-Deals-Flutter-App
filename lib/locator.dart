import 'package:game_prices_deals_flutter_app/data_app/game_api_client.dart';
import 'package:game_prices_deals_flutter_app/data_app/game_repository.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => GameRepository());
  locator.registerLazySingleton(() => GameApiClient());
}
