import 'package:flutter/material.dart';

AppBar OnboardingBar() => AppBar(
  centerTitle: true,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/icons/iconsO.png', height: 30, width: 30),
      const SizedBox(width: 10),
      Text('Shopnest'),
    ],
  ),
);
