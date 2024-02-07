
import 'package:e_cart/features/authentications/screens/onboarding/onboarding.dart';
import 'package:e_cart/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemee.lightTheme,
      darkTheme: AppThemee.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}