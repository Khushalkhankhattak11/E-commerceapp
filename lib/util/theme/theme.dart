import 'package:commerceapp/util/theme/Customtheme/appbar_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/bottomsheet_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/checkbox_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/chip_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/custom_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/elevatedbutton_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/outlinebutton_theme.dart';
import 'package:commerceapp/util/theme/Customtheme/textform_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "sans_regular",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextThemee,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppbarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomsheet,
    checkboxTheme: TCheckBox.lightCheckboxTheme,
    chipTheme: TChip.lightchipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButton,
    inputDecorationTheme: TTextFormFiledTheme.lightinputTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "sans_regular",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextThemee,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomsheet,
    checkboxTheme: TCheckBox.darkCheckboxTheme,
    chipTheme: TChip.darkchipTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButton,
    inputDecorationTheme: TTextFormFiledTheme.darkinputTheme,
  );
}
