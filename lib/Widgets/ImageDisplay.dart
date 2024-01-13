import 'package:flutter/material.dart';
import 'package:app_pemrograman_mobile/Carousel/image.dart';

class ImageDisplay extends StatelessWidget {
  final Category category;
  const ImageDisplay({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            Image.asset(
              category.image,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
