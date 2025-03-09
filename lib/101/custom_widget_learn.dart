import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String _title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFoodButton(title: _title),
            ),
          ),
          SizedBox(height: 100),
          CustomFoodButton(title: _title),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  static final Color redColor = Colors.redAccent;
  static final whiteColor = Colors.white;
}

class _PaddingUtility {
  static final EdgeInsets normalPadding = EdgeInsets.all(8.0);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        backgroundColor: _ColorsUtility.redColor,
      ),
      onPressed: () {},

      child: Padding(
        padding: _PaddingUtility.normalPadding,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: _ColorsUtility.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
