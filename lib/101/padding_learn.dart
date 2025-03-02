import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: Container(color: Colors.white, height: 100),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                padding: ProjectPadding.pagePaddingVertical,
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding:
                  ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: Text('Gulsah'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(horizontal: 10.0);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
