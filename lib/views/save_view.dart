import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paint_app/constants.dart';
import 'package:paint_app/widgets/reusable_textfield.dart';

class SaveView extends StatefulWidget {
  const SaveView({Key? key}) : super(key: key);

  @override
  State<SaveView> createState() => _SaveViewState();
}

class _SaveViewState extends State<SaveView> {
  final TextEditingController fileNameConroller = TextEditingController();
  String dropdownvalue = 'PNG';

  // List of items in our dropdown menu
  var items = [
    'PNG',
    'JPG',
    'JPEG',
    'SVG',
  ];
  @override
  void initState() {
    Future.delayed(
      Duration.zero,
      (() => saveDialog(context)),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/rubberscreen.png",
          ),
          dailogButtons("Save changes", () {
            saveDialog(context);
          })
        ],
      ),
    );
  }

  Future<dynamic> saveDialog(BuildContext context) {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Text(
            'Save',
            style: kTitleTextStyle,
          ),
          content: Text(
            "Do you want to save changes",
            style: kTitleTextStyle,
          ),
          actions: [
            dailogButtons(
              "Save",
              () {
                Navigator.of(context).pop();
                saveAsDialog(context);
              },
            ),
            dailogButtons(
              "Don't Save",
              () {
                Navigator.of(context).pop();
              },
            ),
            dailogButtons(
              "Cancel",
              () {
                Navigator.of(context).pop();
              },
            ),
          ],
          backgroundColor: appColor.withOpacity(0.8),
        );
      },
    );
  }

  Future<dynamic> saveAsDialog(BuildContext context) {
    return showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          title: Text(
            'Save As',
            style: kTitleTextStyle,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ReusableTextField(
                hintText: "File Name",
                myController: fileNameConroller,
                textInputType: TextInputType.text,
              ),
              Container(
                width: 160,
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownvalue,

                    // Down Arrow Icon
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                    ),

                    // Array list of items
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          actions: [
            dailogButtons(
              "Save",
              () {},
            ),
          ],
          backgroundColor: appColor.withOpacity(0.8),
        );
      },
    );
  }

  ElevatedButton dailogButtons(
    String title,
    VoidCallback onTap,
  ) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.black),
          ),
        ),
      ),
      child: Text(
        title,
        style: GoogleFonts.comicNeue(
          color: appColor,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
