import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/101/app_bar_learn.dart';
import 'package:flutter_zero_to_hero/101/button_learn.dart';
import 'package:flutter_zero_to_hero/101/color_learn.dart';
import 'package:flutter_zero_to_hero/101/icon_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: ColorLearn(),
    );
  }
}
