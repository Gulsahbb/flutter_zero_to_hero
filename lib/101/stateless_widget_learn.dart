import 'package:flutter/material.dart';

class StatelessWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleTextWidget(text: 'abc'),
          TitleTextWidget(text: 'def'),
          TitleTextWidget(text: 'ghi'),
          TitleTextWidget(text: 'jkl'),
          _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amberAccent,
      ),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineLarge);
  }
}
