import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Peletta {
  static Color scaffoldBackground = HexColor('F2F2F2');
  static Color primarySwatch = HexColor('FA4A0C');
  static Color firstWhite = HexColor('FFFFFF');
  static Color redColor = HexColor('FFFFFF');
  static Color blackColor = HexColor('000000');
}

ThemeData themedata = ThemeData(
  appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
    fontFamily: GoogleFonts.sourceSansPro().fontFamily,
  )),
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: Peletta.scaffoldBackground,
  fontFamily: GoogleFonts.sourceSansPro().fontFamily,
  textTheme: GoogleFonts.sourceSansProTextTheme(),
);
