import 'package:flutter/material.dart';
import 'package:game_prices_deals_flutter_app/action_widgets_app/select_game_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/game_additional_data_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/game_image_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/last_update_widget.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/name_widget.dart';

class GameMasterApp extends StatelessWidget {
  String? selectedGame = "StarCraft2";

  @override
  Widget build(BuildContext context) {
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

                debugPrint("selectedGame " + selectedGame!);
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            NameWidget(
              name: selectedGame,
            ),
            LastUpdateWidget(),
            GameImageWidget(),
            GameAdditionalData(),
          ],
        ),
      ),
    );
  }
}
