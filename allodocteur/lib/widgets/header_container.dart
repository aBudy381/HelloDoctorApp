import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderContainer extends StatelessWidget {
  var text = "Login";

  HeaderContainer(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF370665), Color(0xFF481C72)],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                text,
                style: GoogleFonts.nunito(color: Colors.white, fontSize: 20),
                //style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          Center(
            child: Image.asset("assets/logo4.png"),
          ),
        ],
      ),
    );
  }
}
