import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_prices_deals_flutter_app/blocs/game_bloc.dart';
import 'package:game_prices_deals_flutter_app/locator.dart';
import 'package:game_prices_deals_flutter_app/widgets_app/game_master_app.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Master',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<GameBloc>(
        create: (context) => GameBloc(),
        child: GameMasterApp(),
      ),
    );
  }
}
