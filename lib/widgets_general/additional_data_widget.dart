import 'package:flutter/material.dart';

class AdditionalDataWidget extends StatelessWidget {
  late String additionalDataName;
  late String additionalData;
  AdditionalDataWidget(
      {required this.additionalDataName, required this.additionalData});
  @override
  Widget build(BuildContext context) {
    return Text(
      additionalDataName + additionalData,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }
}
