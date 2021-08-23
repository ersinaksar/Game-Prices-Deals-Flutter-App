import 'package:flutter/material.dart';

class AdditionalDataWidget extends StatelessWidget {
  const AdditionalDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Additional Data " + 24.toString() + " Data",
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    );
  }
}
