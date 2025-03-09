import 'package:flutter/material.dart';
import 'package:flutter_zero_to_hero/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a Note';
  final _importNote = 'Imports Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(backgroundColor: Colors.blueGrey.shade50),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().astroGirlT),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(subtitle: _description * 5),
            ),
            Spacer(),
            _createElevatedButton(createNote: _createNote),
            _createTextButton(importNote: _importNote),
            SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }
}

class _createTextButton extends StatelessWidget {
  const _createTextButton({super.key, required String importNote})
    : _importNote = importNote;

  final String _importNote;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _importNote,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class _createElevatedButton extends StatelessWidget {
  const _createElevatedButton({super.key, required String createNote})
    : _createNote = createNote;

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: SizedBox(
        height: ButtonHeights.buttonNormalHeight,
        child: Center(
          child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key,
    this.textAlign = TextAlign.center,
    required this.subtitle,
  });
  final TextAlign textAlign;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle * 7,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 20,
  );
  static final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
