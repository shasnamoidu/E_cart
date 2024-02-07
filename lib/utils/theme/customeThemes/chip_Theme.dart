

import 'package:flutter/material.dart';

class ChipThemee{
  ChipThemee._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.purpleAccent,
    padding: const EdgeInsets.symmetric(horizontal: 12.8, vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.purpleAccent,
    padding: EdgeInsets.symmetric(horizontal: 12.8, vertical: 12),
    checkmarkColor: Colors.white,
  );
}