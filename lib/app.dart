import 'package:commerceapp/features/authentication/screen/onboarding/onboarding_screen.dart';
import 'package:commerceapp/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Flutter Demos',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}