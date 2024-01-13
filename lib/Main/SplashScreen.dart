import 'package:app_pemrograman_mobile/Controller/Auth_Controller.dart';
import 'package:app_pemrograman_mobile/PageList/Log_Page/LogPage.dart';
import 'package:app_pemrograman_mobile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late bool isAuthenticated;

  @override
  void initState() {
    AuthController authController = Get.find<AuthController>();
    isAuthenticated = MyApp.token?.isNotEmpty ?? false;

    super.initState();

    if (isAuthenticated) {
      Future.delayed(Duration(seconds: 3), () {
        authController.decideRoute();
      });

      return;
    }

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => AuthScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 38, 32, 104),
              Color.fromARGB(255, 251, 247, 25)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/Logo-SB/Medium-SB.png"),
              width: 150,
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Swalayan E-SHOP',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
