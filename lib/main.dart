import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/theme_data.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightMode,
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );

  }
}