import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageURL = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: RandomImage(),
                dense: true,
                onTap: () {},
                subtitle: Text('How do you use your card'),
                leading: Icon(Icons.money),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
