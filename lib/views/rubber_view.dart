import 'package:flutter/material.dart';

class RubberView extends StatelessWidget {
  const RubberView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assets/images/rubberscreen.png",
      ),
    );
  }
}
