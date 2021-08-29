import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  //const ImageWidget({Key? key}) : super(key: key);
  String image;
  ImageWidget({required this.image});

  @override
  Widget build(BuildContext context) {
    if (image == "demo") {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: FlutterLogo(
            size: 144,
          ),
        ),
      );
    }
    if (image != "demo") {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Image.network(
          image,
          // width: 150, height: 150,
        )),
      );
    }
    return Container();
  }
}
