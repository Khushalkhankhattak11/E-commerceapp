import 'package:commerceapp/util/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextFormFiledTheme {
  TTextFormFiledTheme._();

  static TextTheme lighttextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: TColors.dark),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: TColors.dark),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: TColors.dark),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: TColors.dark),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: TColors.dark),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: TColors.dark),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: TColors.dark),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: TColors.dark),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: TColors.dark.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: TColors.dark),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: TColors.dark.withOpacity(0.5)),
  );
  static TextTheme darktextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: TColors.light),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: TColors.light),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: TColors.light),
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: TColors.light),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: TColors.light),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: TColors.light),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: TColors.light),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: TColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: TColors.light.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: TColors.light),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: TColors.light.withOpacity(0.5)),
  );
}
