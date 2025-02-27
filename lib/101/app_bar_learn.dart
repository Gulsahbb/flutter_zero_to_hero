import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String welcome = 'Welcome Learn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(welcome),
        leading: Icon(Icons.chevron_left_outlined),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          // Center(child: CircularProgressIndicator()),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
