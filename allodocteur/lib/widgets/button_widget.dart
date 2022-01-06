import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  var btnText = "";
  var onClick;
  var btnClr;

  ButtonWidget({Key? key, required this.btnText, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Color(0xFF370665),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                bottomLeft: Radius.circular(36),
                topRight: Radius.circular(36),
                bottomRight: Radius.circular(36)),
          ),
          alignment: Alignment.center,
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
