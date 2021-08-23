import 'package:flutter/material.dart';
import 'package:game_prices_deals_flutter_app/widgets_general/header_text_widget.dart';

class NameWidget extends StatelessWidget {
  late final String? name;
  NameWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return HeaderTextWidget(
      header: name,
    );
  }
}
