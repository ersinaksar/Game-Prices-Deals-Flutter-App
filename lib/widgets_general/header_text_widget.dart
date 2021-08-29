import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  late final String? header;
  HeaderTextWidget({required this.header});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          header!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
