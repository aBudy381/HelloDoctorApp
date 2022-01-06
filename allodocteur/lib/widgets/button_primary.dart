import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonPrimary extends StatelessWidget {
  var onClick;
  var btnText = "";
  ButtonPrimary({Key? key, required Null Function() onClick, String? btnText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          color: Color(0xFF370665),
          onPressed: onClick,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            width: double.infinity,
            child: Text(
              btnText,
              style: GoogleFonts.nunito(
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
