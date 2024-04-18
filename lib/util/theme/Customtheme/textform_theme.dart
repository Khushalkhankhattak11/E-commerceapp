import 'package:commerceapp/util/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextFormFiledTheme {
  TTextFormFiledTheme._();

  static InputDecorationTheme lightinputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.black12, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder:  const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(14), 
    borderSide: const BorderSide(color: Colors.orange,width: 1),
   ), 
  );
   static InputDecorationTheme darkinputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.darkgrey,
    suffixIconColor: TColors.darkgrey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.light),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: TColors.light),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: TColors.light.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.grey, width: 1),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.black12, width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.red, width: 1),
    ),
    focusedErrorBorder:  const OutlineInputBorder().copyWith(
    borderRadius: BorderRadius.circular(14), 
    borderSide: const BorderSide(color: Colors.orange,width: 1),
   ), 
  );
}
