import 'package:flutter/material.dart';

class PHeader extends StatefulWidget {
  @override
  State<PHeader> createState() => _PHeaderState();
}

class _PHeaderState extends State<PHeader> {
  @override
  Widget build(BuildContext context) {
    // Header
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 25),
      alignment: Alignment.bottomCenter,
      height: 100,
      decoration: BoxDecoration(color: Color.fromARGB(255, 38, 32, 104)),
      child: Row(children: [
        Row(
          children: const [
            Text(
              "Swalayan E-SHOP",
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 243, 225, 239),
              ),
            ),
          ],
        ),
      ]),
    );
    // End of Header
  }
}
