import 'package:flutter/material.dart';
import 'package:ui_creation/pages/register/news_page.dart';
import 'package:ui_creation/pages/register/profile_screen.dart';

import 'pages/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
