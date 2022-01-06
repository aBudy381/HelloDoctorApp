import 'package:allodocteur/config/palette.dart';
import 'package:allodocteur/widgets/widgets.dart';

import 'package:flutter/material.dart';

import 'screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Acceuil",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Rappel du Rendez-vous",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: screenHeight * 0.01,
                ),
                Text(
                  "Vous avez un Rendez-Vous apres 1 heures et 30 minutes avec monsieur Ahmed Jday, vous pouvez l'appeler ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Row(
                  children: <Widget>[
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Palette.BtnprimaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      child: Text('Appeler Maintenant'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: screenHeight * 0.01,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Palette.BtnsecondColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                      child: Text('Envoyer un SMS'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // }

}
