import 'package:flutter/material.dart';
import 'package:game_prices_deals_flutter_app/widgets_general/additional_data_widget.dart';

class GameAdditionalData extends StatelessWidget {
  const GameAdditionalData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            AdditionalDataWidget(),
            AdditionalDataWidget(),
            AdditionalDataWidget(),
            AdditionalDataWidget(),
            AdditionalDataWidget(),
          ],
        ),
      ),
    );
  }
}
