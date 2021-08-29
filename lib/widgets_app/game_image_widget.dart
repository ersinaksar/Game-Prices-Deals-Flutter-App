import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_prices_deals_flutter_app/blocs/game_bloc.dart';
import 'package:game_prices_deals_flutter_app/widgets_general/image_widget.dart';

class GameImageWidget extends StatelessWidget {
  const GameImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _gameBloc = BlocProvider.of<GameBloc>(context);
    return BlocBuilder(
      bloc: _gameBloc,
      builder: (context, GameState state) {
        var game = (state as GameLoadedState).gameModel;
        var gameImage = game.info!.thumb;
        //if it is developing step you can use "demo" instead of gameImage
        return ImageWidget(image: gameImage);
      },
    );
  }
}
