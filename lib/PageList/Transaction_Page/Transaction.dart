import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage();

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Center(
        child: Text(
          'Transaction Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
