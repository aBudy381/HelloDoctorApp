import 'package:allodocteur/config/palette.dart';
import 'package:allodocteur/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Palette.primaryColor,
              image: DecorationImage(
                //alignment: Alignment.centerLeft,
                alignment: Alignment.topLeft,
                image: AssetImage("assets/back.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //will be changed to avatar picture
                  /********** */
                  /*  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        alignment: Alignment.center,
                        height: 52,
                        width: 52,
                        decoration: const BoxDecoration(
                          color: Color(0xFFB8B9E3),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset("assets/menu.svg"),
                      ),
                    ),
                  ),*/
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Welcome again to your \n dashboard",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Pour gérer votre Cabinet, choisisez juste ce que vous vouler gérer",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: .85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        elementCard(
                          elementTitle: "Mes patients",
                          svgSrc:
                              "assets/undraw_personal_information_re_vw8a (1) 1.png",
                          press: () {},
                        ),
                        elementCard(
                          elementTitle: "Mes rendez-vous",
                          svgSrc: "assets/undraw_events_re_98ue 1.png",
                          press: () {},
                        ),
                        elementCard(
                          elementTitle: "Mes Documents",
                          svgSrc: "assets/undraw_folder_re_j0i0 1.png",
                          press: () {},
                        ),
                        elementCard(
                          elementTitle: "Mes Contacts",
                          svgSrc: "assets/undraw_agreement_re_d4dv (1) 1.png",
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class elementCard extends StatelessWidget {
  final String svgSrc;
  final String elementTitle;
  final Function press;

  const elementCard({
    Key? key,
    required this.svgSrc,
    required this.elementTitle,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Color(0xFFE6E6E6),
          ),
        ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Image.asset(
                    svgSrc,
                    width: 400,
                    height: 150,
                  ),
                  //SvgPicture.asset("undraw_experts_re_i40h.svg"),
                  Text(
                    elementTitle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
