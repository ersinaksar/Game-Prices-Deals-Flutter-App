import 'package:flutter/material.dart';

class UpdateTextWidget extends StatelessWidget {
  const UpdateTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "Update time " + TimeOfDay(hour: 20, minute: 32).format(context),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
