import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:game_prices_deals_flutter_app/data_app/game_repository.dart';
import 'package:game_prices_deals_flutter_app/locator.dart';
import 'package:game_prices_deals_flutter_app/models_app/game_model.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial());
  GameRepository gameRepository = locator<GameRepository>();
  @override
  Stream<GameState> mapEventToState(GameEvent event) async* {
    // TODO: implement mapEventToState
    if (event is FetchGameEvent) {
      yield GameLoadingState();
      try {
        final GameModel? handedGame =
            await gameRepository.getGame(event.game_name);
        yield GameLoadedState(gameModel: handedGame!);
      } catch (e) {
        GameErrorState();
      }
    }
  }
}
