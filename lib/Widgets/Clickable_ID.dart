import 'package:app_pemrograman_mobile/Carousel/Clickable_image.dart';
import 'package:flutter/material.dart';

class Clickable_ID extends StatelessWidget {
  final Category_ID category_ID;
  final Function() OnPressed;
  const Clickable_ID({required this.category_ID, required this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: OnPressed,
              child: Image.asset(
                category_ID.image,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
