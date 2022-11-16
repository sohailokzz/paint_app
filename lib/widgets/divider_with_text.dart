import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividersWithText extends StatelessWidget {
  const DividersWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: Color(0XFF707070),
            thickness: 1.5,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "OR",
          style: GoogleFonts.comicNeue(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Divider(
            color: Color(0XFF707070),
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
