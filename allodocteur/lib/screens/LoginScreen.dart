import 'package:allodocteur/screens/registration_screen.dart';
import 'package:allodocteur/widgets/header_container.dart';
import 'package:flutter/material.dart';
import 'package:allodocteur/widgets/widgets.dart';

import 'bottom_nav_screen.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<DoctorLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Login"),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Email", icon: Icons.email),
                    _textInput(hint: "Mot de passe", icon: Icons.vpn_key),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Mot de pass oubliée?",
                        style: TextStyle(color: Color(0xFFFC9918)),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RegistrationScreen()));
                          },
                          btnText: "LOGIN",
                        ),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Vous n'etes pas inscrit ? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Inscrivez-vous",
                            style: TextStyle(color: Color(0xFF370665))),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
