import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage();

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Center(
        child: Text(
          'Account Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
