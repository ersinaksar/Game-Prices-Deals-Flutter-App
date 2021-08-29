import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_prices_deals_flutter_app/action_widgets_app/select_game_widget.dart';
import 'package:game_prices_deals_flutter_app/blocs/game_bloc.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/game_additional_data_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/game_image_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/last_update_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/name_widget.dart';

class GameMasterApp extends StatefulWidget {
  @override
  _GameMasterAppState createState() => _GameMasterAppState();
}

class _GameMasterAppState extends State<GameMasterApp> {
  String? selectedGame = "StarCraft2";
  Completer<void> _refreshCompleter = Completer<void>();
  @override
  Widget build(BuildContext context) {
    final _gameBloc = BlocProvider.of<GameBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Master"),
        actions: [
          IconButton(
              onPressed: () async {
                selectedGame = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectGameWidget()));

                if (selectedGame != null) {
                  _gameBloc.add(FetchGameEvent(game_name: selectedGame!));
                }
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: BlocBuilder(
          bloc: _gameBloc,
          builder: (context, GameState state) {
            if (state is GameInitial) {
              return Container(
                child: Text("Select a game"),
              );
            }
            if (state is GameLoadingState) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GameLoadedState) {
              final incomingGame = state.gameModel;
              selectedGame = incomingGame.info!.title;
              _refreshCompleter.complete();
              _refreshCompleter = Completer();
              return RefreshIndicator(
                onRefresh: () async {
                  _gameBloc.add(RefreshGameEvent(game_name: selectedGame!));
                  return _refreshCompleter.future;
                },
                child: ListView(
                  children: [
                    NameWidget(
                      name: incomingGame.info!.title,
                    ),
                    //LastUpdateWidget(),
                    GameImageWidget(),
                    GameAdditionalData(),
                  ],
                ),
              );
            }
            if (state is GameErrorState) {
              return Center(
                child: Text("Error"),
              );
            }
            if (state is GameInternetErrorState) {
              return Center(
                child: Text("Check your connection"),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
