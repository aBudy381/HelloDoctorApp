import 'package:allodocteur/screens/screens.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:allodocteur/config/palette.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  static const Color primaryColor = Color(0xFF473F97);
  static const Color secondaryColor = Colors.grey;
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text("page 2"),
    Text("page 2"),
    Text("page 2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Acceuil'),
            activeColor: primaryColor,
            inactiveColor: secondaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Patients'),
            activeColor: primaryColor,
            inactiveColor: secondaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Calendier'),
            activeColor: primaryColor,
            inactiveColor: secondaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            activeColor: primaryColor,
            inactiveColor: secondaryColor,
          ),
        ],
      ),
    );
  }
}
