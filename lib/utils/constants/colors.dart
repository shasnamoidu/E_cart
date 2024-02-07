import 'package:flutter/material.dart';

class Colorss{
  Colorss._();

// app basic color
  static Color primary = const Color.fromARGB(255, 210, 33, 241);
  static Color secondary =const Color.fromARGB(255, 241, 219, 21);
  static Color occent = const Color.fromARGB(255, 227, 223, 228);

// gradient color
static const Gradient lineargradient = LinearGradient(
  begin:  Alignment(0.0, 0.0),
  end: Alignment(0.707, -0.707),
  colors: [
  Color.fromARGB(255, 241, 21, 186),
  Color.fromARGB(255, 247, 98, 222),
  Color.fromARGB(255, 248, 147, 223)
]);
  
// text colors
  static Color textprimary = const Color.fromARGB(255, 210, 33, 241);
  static Color textsecondary =const Color.fromARGB(255, 208, 21, 241);
  static Color textoccent = Colors.white;

// background colors
  static Color light = const Color.fromARGB(255, 103, 41, 114);
  static Color dark =const Color.fromARGB(255, 123, 28, 139);
  static Color primarybackground = const Color.fromARGB(255, 117, 58, 128);

// background contaianer colors
  static Color lightcontainer = const Color.fromARGB(255, 210, 33, 241);
  static Color darkcontainer = Colors.white.withOpacity(0.1);

// button colors
  static Color buttonprimary = const Color.fromARGB(255, 202, 63, 226);
  static Color buttonsecondary =const Color.fromARGB(255, 153, 151, 153);
  static Color buttondisable = const Color.fromARGB(255, 237, 211, 241);

// border colors
  static Color borderprimary = const Color.fromARGB(255, 236, 199, 243);
  static Color bordersecondary =const Color.fromARGB(255, 232, 157, 245);

// error and validation colors
  static Color error = const Color.fromARGB(255, 185, 14, 71);
  static Color success =const Color.fromARGB(255, 28, 139, 46);
  static Color warning = const Color.fromARGB(255, 224, 170, 19);
  static Color info = const Color.fromARGB(255, 208, 39, 238);

// nutral colors
  static Color black = const Color.fromARGB(255, 59, 59, 56);
  static Color darkergrey =const Color.fromARGB(255, 74, 68, 75);
  static Color darkgrey = const Color.fromARGB(255, 58, 56, 58);
  static Color grey = const Color.fromARGB(255, 71, 71, 71);
  static Color softgrey =const Color.fromARGB(255, 110, 109, 110);
  static Color lightgrey = const Color.fromARGB(255, 134, 133, 134);
  static Color white = const Color.fromARGB(255, 233, 230, 230);

}