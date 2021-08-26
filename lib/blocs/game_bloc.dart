import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:game_prices_deals_flutter_app/models/game_model.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameInitial());

  @override
  Stream<GameState> mapEventToState(GameEvent event) async* {
    // TODO: implement mapEventToState
    if (event is FetchGameEvent) {
      yield GameLoadingState();
      try {
        yield GameLoadedState(gameModel: GameModel());
      } catch (e) {
        GameErrorState();
      }
    }
  }
}
