import 'package:flutter/material.dart';
import 'package:paint_app/constants.dart';

class UndoView extends StatefulWidget {
  const UndoView({Key? key}) : super(key: key);

  @override
  State<UndoView> createState() => _UndoViewState();
}

class _UndoViewState extends State<UndoView> {
  Widget _offsetPopup() => PopupMenuButton<int>(
        color: appColor,
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 1,
            child: Text(
              "New",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 2,
            child: Text(
              "Open",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 3,
            child: Text(
              "Save",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 4,
            child: Text(
              "Print",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 5,
            child: Text(
              "Close",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 6,
            child: Text(
              "Import",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 7,
            child: Text(
              "Export",
              style: kTitleTextStyle,
            ),
          ),
          PopupMenuItem(
            value: 8,
            child: Text(
              "Exit",
              style: kTitleTextStyle,
            ),
          ),
        ],
        icon: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const ShapeDecoration(
            color: appColor,
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
          child: Image.asset(
            "assets/images/logo.png",
            scale: 12,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          right: 10.0,
          bottom: 10.0,
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 80.0,
            width: 80.0,
            child: _offsetPopup(),
          ),
        ),
      ),
    );
  }
}
