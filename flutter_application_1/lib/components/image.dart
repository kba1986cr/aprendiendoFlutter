import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.network(
            "https://live.staticflickr.com/3250/2929878020_d1bc4a2eb5.jpg",
          ),
        ),
        Center(child: Image.asset("assets/images/flutterImage.jpeg")),
        //
      ],
    );
  }
}
