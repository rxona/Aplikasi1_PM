import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  const Guide({super.key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Center(
        child: Text(
          'Placeholder Screen2',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
