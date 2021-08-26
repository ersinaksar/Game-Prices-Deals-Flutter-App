part of 'game_bloc.dart';

abstract class GameEvent extends Equatable {
  const GameEvent();
}

class FetchGameEvent extends GameEvent {
  late final String game_name;
  FetchGameEvent({required this.game_name});
  @override
  // TODO: implement props
  List<Object?> get props => [game_name];
}
