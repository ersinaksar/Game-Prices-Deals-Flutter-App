import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_prices_deals_flutter_app/blocs/game_bloc.dart';
import 'package:game_prices_deals_flutter_app/widgets_general/additional_data_widget.dart';

class GameAdditionalData extends StatelessWidget {
  const GameAdditionalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _gameBloc = BlocProvider.of<GameBloc>(context);
    return BlocBuilder(
      bloc: _gameBloc,
      builder: (context, GameState state) {
        var game = (state as GameLoadedState).gameModel;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                AdditionalDataWidget(
                  additionalDataName: "Price ",
                  additionalData: game.deals![0].price,
                ),
                SizedBox(
                  height: 10,
                ),
                AdditionalDataWidget(
                  additionalDataName: "Retail Price ",
                  additionalData: game.deals![0].retailPrice,
                ),
                SizedBox(
                  height: 10,
                ),
                AdditionalDataWidget(
                  additionalDataName: "Savings ",
                  additionalData: game.deals![0].savings,
                ),
                //AdditionalDataWidget(),
                //AdditionalDataWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
