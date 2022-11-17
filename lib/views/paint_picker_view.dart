import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:paint_app/constants.dart';

class PaintPickerView extends StatefulWidget {
  const PaintPickerView({Key? key}) : super(key: key);

  @override
  State<PaintPickerView> createState() => _PaintPickerViewState();
}

class _PaintPickerViewState extends State<PaintPickerView> {
  // create some values
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(
      () => pickerColor = color,
    );
  }

  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      (() => colorPickerDialog(context)),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: pickerColor,
        ),
        onPressed: () {
          colorPickerDialog(context);
        },
        child: const Text("Pick Color"),
      ),
    );
  }

  Future<dynamic> colorPickerDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Pick a color!'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: changeColor,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: appColor,
              ),
              child: const Text('Got it'),
              onPressed: () {
                setState(() => currentColor = pickerColor);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
