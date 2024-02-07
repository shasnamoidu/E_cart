import 'package:e_cart/utils/theme/customeThemes/appbar_theme.dart';
import 'package:e_cart/utils/theme/customeThemes/bottomSheet_theme.dart';
import 'package:e_cart/utils/theme/customeThemes/checkBox_theme.dart';
import 'package:e_cart/utils/theme/customeThemes/chip_Theme.dart';
import 'package:e_cart/utils/theme/customeThemes/elevatedButtontheme.dart';
import 'package:e_cart/utils/theme/customeThemes/outLinedButton_Theme.dart';
import 'package:e_cart/utils/theme/customeThemes/textFieldTheme.dart';
import 'package:e_cart/utils/theme/customeThemes/textTheme.dart';
import 'package:flutter/material.dart';

class AppThemee{
  AppThemee._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.purpleAccent,
    chipTheme: ChipThemee.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemee.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemee.lightElevatedButtonTheme,
    appBarTheme: AppBarThemee.lightAppBarTheme,
    checkboxTheme: CheckBoxThemee.lightCheckBoxTheme,
    bottomSheetTheme: BottomSheetThemee.lightBottomSheetTheme,
    outlinedButtonTheme: OutLinedButtonThemee.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemee.lightInputDecorationTheme

  );
  static ThemeData darkTheme = ThemeData(
   useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.redAccent,
    chipTheme: ChipThemee.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemee.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemee.darkElevatedButtonTheme,
    appBarTheme: AppBarThemee.darkAppBarTheme,
    checkboxTheme: CheckBoxThemee.darkCheckBoxTheme,
    bottomSheetTheme: BottomSheetThemee.darktBottomSheetTheme,
    outlinedButtonTheme: OutLinedButtonThemee.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemee.darkInputDecorationTheme
  );
}