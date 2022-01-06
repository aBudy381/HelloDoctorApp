import 'dart:async';

import 'package:allodocteur/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF370665), Color(0xFF481C72)],
                end: Alignment.bottomCenter,
                begin: Alignment.topCenter),
          ),
          child: Center(
            child: Image.asset("assets/logo.png"),
          )),
    );
  }
}
