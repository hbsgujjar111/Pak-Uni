import 'package:flutter/material.dart';
import 'package:university_list/main_screen.dart';

void main() {
  final MaterialColor primaryColor = const MaterialColor(
    0xff1b5e20,
    const <int, Color>{
      50: const Color(0xff1b5e20),
      100: const Color(0xff1b5e20),
      200: const Color(0xff1b5e20),
      300: const Color(0xff1b5e20),
      400: const Color(0xff1b5e20),
      500: const Color(0xff1b5e20),
      600: const Color(0xff1b5e20),
      700: const Color(0xff1b5e20),
      800: const Color(0xff1b5e20),
      900: const Color(0xff1b5e20),
    },
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    ),
  );
}
