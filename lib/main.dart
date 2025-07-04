import 'package:flutter/material.dart';
import 'package:project_test/const/theme.dart';
import 'package:project_test/screen/onboarding/onboardingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopnest',
      theme: Ptheme.lightTeme,
      home: OnboardingPage(),
    );
  }
}
