import 'package:allodocteur/screens/homepage_screen.dart';
import 'package:allodocteur/screens/screens.dart';
import 'package:allodocteur/widgets/button_widget.dart';
import 'package:allodocteur/widgets/header_container.dart';

import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Inscription"),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Nom", icon: Icons.person),
                    _textInput(hint: "Prenom", icon: Icons.person),
                    _textInput(hint: "Email", icon: Icons.email),
                    _textInput(
                        hint: "Date de naissance", icon: Icons.date_range),
                    _textInput(hint: "Adress", icon: Icons.location_city),
                    _textInput(hint: "Mot de passe", icon: Icons.vpn_key),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: "Inscription",
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavScreen()));
                          },
                        ),
                      ),
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Vous etes déja inscrit ? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Login",
                            style: TextStyle(color: Color(0xFF9171CF))),
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
