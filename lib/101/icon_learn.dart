import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});
  final iconSize = IconSizes();
  final iconColor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
            color: iconColor.boyzone,
            iconSize: iconSize.iconSmall,
          ),
          SizedBox(height: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline),
            color: Theme.of(context).colorScheme.error, // color: Colors.red,
            iconSize: iconSize.iconSmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color boyzone = Color(0xFF2d96d7);
}
