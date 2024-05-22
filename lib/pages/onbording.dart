import 'package:flutter/material.dart';

class OnBording extends StatelessWidget {
  String image;
  OnBording(this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration:  BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/$image.png"))),
      ),
    );
  }
}
