import 'package:flutter/material.dart';

class PencilView extends StatelessWidget {
  const PencilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/pencilpaint.png"),
    );
  }
}
