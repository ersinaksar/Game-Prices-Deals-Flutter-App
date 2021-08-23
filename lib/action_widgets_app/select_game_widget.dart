import 'package:flutter/material.dart';
import 'package:game_prices_deals_flutter_app/action_widgets_general/text_form_field_widget.dart';

class SelectGameWidget extends StatefulWidget {
  @override
  _SelectGameWidgetState createState() => _SelectGameWidgetState();
}

class _SelectGameWidgetState extends State<SelectGameWidget> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search Game",
        ),
      ),
      body: Form(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _textController,
                  decoration: InputDecoration(
                    labelText: "Game",
                    hintText: "Search a Game, my Master!",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
            )
          ],
        ),
      ),
    );*/
    return TextFormFieldWidget();
  }
}
