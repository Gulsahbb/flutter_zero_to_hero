import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                color: ColorsItems.midGreen,
                child: Text('DATA', style: TextStyle(fontSize: 22)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorsItems {
  static final Color boyzone = Color(0xFF2d96d7);
  static final Color midGreen = Color(0xFF4ca545);
  static final Color porsche = Color(0xFFedbf61);
}
