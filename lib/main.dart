import 'package:flutter/material.dart';
import 'package:food_app/pages/loadingPage.dart';
import 'package:food_app/menu.dart';
import 'package:food_app/pages/loadingPage.dart';
import 'package:food_app/pages/loginPage.dart';

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
      title: 'Food App',
      home: loadingPage(),
    );
  }
}
