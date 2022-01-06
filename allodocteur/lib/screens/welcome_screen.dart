import 'package:allodocteur/screens/homepage_screen.dart';
import 'package:allodocteur/screens/registration_screen.dart';
import 'package:allodocteur/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'LoginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Bienvenue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Pour continuez à utiliser notre application s'il vous plait choisir votre role ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/welcomee.png"))),
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                      color: Color(0xFF370665),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DoctorLogin();
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'Medicin',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                          ),
                        ),
                      )),

                  // the login button

                  // creating the signup button
                  SizedBox(height: 20),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                      color: Color(0xFFFC9918),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'Patient',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                          ),
                        ),
                      )),
                  SizedBox(height: 20),
                  FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                      color: Color(0xFFFF370665),
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'Laboratoire',
                          style: GoogleFonts.nunito(
                            color: Colors.white,
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
