part of 'game_bloc.dart';

abstract class GameState extends Equatable {
  const GameState();
}

class GameInitial extends GameState {
  @override
  List<Object> get props => [];
}

class GameLoadingState extends GameState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GameLoadedState extends GameState {
  late final GameModel gameModel;
  GameLoadedState({required this.gameModel});
  @override
  // TODO: implement props
  List<Object?> get props => [gameModel];
}

class GameErrorState extends GameState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GameInternetErrorState extends GameState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
