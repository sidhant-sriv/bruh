import 'package:bruh/image_grid.dart';
import 'package:flutter/material.dart';
// import 'package:bruh/start_menu.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  textTheme: GoogleFonts.rajdhaniTextTheme(),
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: const ImgGrid(),
          ),
        ),
      ),
    );
  }
}
