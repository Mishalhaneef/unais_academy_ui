// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';



const MaterialColor kPrimaryColor = MaterialColor(
  0xFF0E7AC7,
  <int, Color>{
    50: Color(0xFF60799A),
    100: Color(0xFF60799A),
    200: Color(0xFF60799A),
    300: Color(0xFF60799A),
    400: Color(0xFF60799A),
    500: Color(0xFF60799A),
    600: Color(0xFF60799A),
    700: Color(0xFF60799A),
    800: Color(0xFF60799A),
    900: Color(0xFF60799A),
  },
);

//all app's theme color
const kHomeColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [kMainTheme, kMainblueTheme],
);
const kMainTheme = Color(0xFFF0F5F8);
const kMainblueTheme = Color(0xFFE8F1F6);
const kDeepBlueTheme = Color(0xFF60799A);
const kLiteRose = Color(0xFFDCD5FF);
const kLiteRed = Color(0xFFFFCAD1);
const kLiteOrange = Color.fromARGB(255, 255, 226, 202);
const kLiteGreen = Color(0xFFE6F4D9);
const klinearDeepBlue = Color(0xFF60799A);

const kLinearColorBlue = LinearGradient(
  colors: [
    kDeepBlueTheme,
    klinearDeepBlue,
  ],
);
// const kLiteTextColor =

//Texts style
const headRichText = TextStyle(
    fontSize: 26,
    color: Color(0xFF0D1333),
    fontWeight: FontWeight.bold,
    fontFamily: 'Helvatica');

const headRichTextDark = TextStyle(
    fontSize: 26,
    color: kMainTheme,
    fontWeight: FontWeight.bold,
    fontFamily: 'Helvatica');

const offerText = TextStyle(
  fontSize: 26,
  color: Color.fromARGB(255, 255, 255, 255),
  fontWeight: FontWeight.bold,
);

const secondRichText = TextStyle(
    fontSize: 20,
    color: Color(0xFF61688B),
    height: 2,
    fontWeight: FontWeight.w300,
    letterSpacing: 1);

const secondRichTextDark = TextStyle(
    fontSize: 20,
    color: Color.fromARGB(255, 213, 213, 218),
    height: 2,
    fontWeight: FontWeight.w300,
    letterSpacing: 1);

const offerDiscriptionStyle = TextStyle(
    letterSpacing: 2,
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w300);

const buttonTextStyle = TextStyle(color: Color.fromARGB(255, 194, 194, 194));
const buttonTextStyleDark = TextStyle(color: kDeepBlueTheme);

const helperTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 17,
    fontFamily: 'Helvatica');
