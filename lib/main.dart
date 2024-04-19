import 'package:facebook_ui_clone/constants/palette.dart';
import 'package:facebook_ui_clone/screens/nav_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gurmad Harir (FB UI)',
      theme: ThemeData(
        // tested with just a hot reload.
        scaffoldBackgroundColor: Palette.scaffold,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavScreen(),
    );
  }
}
