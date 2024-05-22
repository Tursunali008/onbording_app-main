import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/image.png",
            fit: BoxFit.cover,
          )),
    ));
  }
}
