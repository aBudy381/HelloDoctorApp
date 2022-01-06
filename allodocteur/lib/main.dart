import 'package:allodocteur/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AloDocteur',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      //home: const BottomNavScreen(),
      home: const SplashScreen(),
    );
  }
}
