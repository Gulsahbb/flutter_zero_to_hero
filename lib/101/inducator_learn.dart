import 'package:flutter/material.dart';

class InducatorLearn extends StatelessWidget {
  const InducatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: _CenterCircularProgress());
  }
}

class _CenterCircularProgress extends StatelessWidget {
  const _CenterCircularProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        strokeWidth: 10,
        value: 0.9,
        backgroundColor: Colors.black,
      ),
    );
  }
}
