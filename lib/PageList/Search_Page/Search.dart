import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage();

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Center(
        child: Text(
          'Search Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
