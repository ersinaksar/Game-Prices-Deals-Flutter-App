import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_prices_deals_flutter_app/blocs/game_bloc.dart';
import 'package:game_prices_deals_flutter_app/widgets_general/update_text_widget.dart';

class LastUpdateWidget extends StatelessWidget {
  const LastUpdateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _gameBloc = BlocProvider.of<GameBloc>(context);
    return BlocBuilder(
      bloc: _gameBloc,
      builder: (context, GameState state) {
        var game = (state as GameLoadedState).gameModel;
        var date = game.cheapestPriceEver!.date;
        return UpdateTextWidget(
          date: date,
        );
      },
    );
  }
}
