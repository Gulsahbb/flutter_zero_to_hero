import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String imagePath =
      'data:image/png;base64,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';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: PngImage(name: ImageItems().astroGirlTWithoutPath),
          ),
          Image.network(
            imagePath,
            errorBuilder:
                (context, error, stackTrace) => const Icon(Icons.error_outline),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String astroGirl = "assets/resim.jpg";
  final String astroGirlT = "assets/png/resimT.png";
  final astroGirlTWithoutPath = "resimT.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover);
  }

  String get _nameWithPath => 'assets/png/$name';
}
