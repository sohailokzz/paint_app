import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField({
    Key? key,
    required this.hintText,
    required this.myController,
    required this.textInputType,
    this.obsecureText,
  }) : super(key: key);

  final String hintText;

  final TextEditingController myController;
  final TextInputType textInputType;
  final bool? obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      cursorColor: Colors.black,
      style: const TextStyle(
        color: Colors.black,
      ),
      keyboardType: textInputType,
      obscureText: obsecureText ?? false,
      cursorHeight: 24,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFAD5164),
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFAD5164),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
