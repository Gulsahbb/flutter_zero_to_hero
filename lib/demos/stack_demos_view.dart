import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/core/random_image.dart';

class StackDemosView extends StatelessWidget {
  const StackDemosView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(bottom: _cardHeight / 2, child: RandomImage()),
                Positioned(height: _cardHeight, bottom: 0, width: _cardWidth, child: _cardCustom()),
              ],
            ),
          ),
          Spacer(flex: 6),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return Card(color: Colors.white, shape: RoundedRectangleBorder());
  }
}
