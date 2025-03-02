// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali')),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Center(child: Text('Veli')),
            ),
          ),
          Card(
            margin: ProjectMargins.cardMarginAll,
            color: Theme.of(context).colorScheme.secondary,
            child: SizedBox(height: 100, width: 100),
          ),
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMarginAll = EdgeInsets.all(10);
}

// Borders
// StatiumBorder(),CircleBorder(),RoundedRectangleBorder()

class _CustomCard extends StatelessWidget {
  _CustomCard({super.key, required this.child});
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMarginAll,
      color: Colors.brown,
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}
