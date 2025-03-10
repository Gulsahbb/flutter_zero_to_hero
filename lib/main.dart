import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/demos/stack_demos_view.dart';
// import 'package:flutter_zero_to_hero/101/column_row_learn.dart';
// import 'package:flutter_zero_to_hero/101/custom_widget_learn.dart';
// import 'package:flutter_zero_to_hero/101/inducator_learn.dart';
// import 'package:flutter_zero_to_hero/101/list_tile_learn.dart';
// import 'package:flutter_zero_to_hero/101/stack_learn.dart';
// import 'package:flutter_zero_to_hero/101/app_bar_learn.dart';
// import 'package:flutter_zero_to_hero/101/button_learn.dart';
// import 'package:flutter_zero_to_hero/101/card_learn.dart';
// import 'package:flutter_zero_to_hero/101/color_learn.dart';
// import 'package:flutter_zero_to_hero/101/icon_learn.dart';
// import 'package:flutter_zero_to_hero/101/image_learn.dart';
// import 'package:flutter_zero_to_hero/demos/note_demos_view.dart';
// import 'package:flutter_zero_to_hero/101/padding_learn.dart';
// import 'package:flutter_zero_to_hero/101/stateless_widget_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.orangeAccent,
        ),
        listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
        appBarTheme: AppBarTheme(
          // ? Renkleri burada da tanımlayabiliriz. Yazmayı unutma
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      home: StackDemosView(),
    );
  }
}
