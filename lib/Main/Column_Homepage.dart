import 'package:flutter/material.dart';

Column buildFileColumn(
    BuildContext context, String image, Function() onPressed) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  return Column(
    children: [
      SizedBox(
        width: screenWidth * 0.3,
        height: screenHeight * 0.01,
      ),
      GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 243, 225, 239),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.all(20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Image.asset('assets/Catalog_Short/$image.png',
                      fit: BoxFit.contain),
                ],
              )),
        ),
      )
    ],
  );
}

Column buildFileColumn2(
    BuildContext context, String image, String image2, Function() onPressed) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return Column(
    children: [
      SizedBox(
        width: screenWidth * 0.3,
        height: screenHeight * 0.01,
      ),
      GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Align(
              alignment: Alignment.topLeft,
              child: Stack(
                children: [
                  Image.asset('assets/Catalog_Short/$image.png',
                      fit: BoxFit.contain),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset('assets/Catalog_Short/$image2.png')),
                  // Image.asset('assets/Catalog_Short/$image2.png'),
                ],
              )),
        ),
      ),
    ],
  );
}
