import 'package:flutter/material.dart';

Column buildFileColumn(String image) {
  return Column(
    children: [
      SizedBox(
        width: 135,
        height: 30,
      ),
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color.fromARGB(255, 243, 225, 239),
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Image.asset('assets/Catalog_Short/$image.png'),
              ],
            )),
      ),
    ],
  );
}

Column buildFileColumn2(String image, String image2) {
  return Column(
    children: [
      SizedBox(
        width: 135,
        height: 30,
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Image.asset('assets/Catalog_Short/$image.png'),
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
    ],
  );
}
