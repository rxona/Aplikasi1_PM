import 'package:app_pemrograman_mobile/Controller/Auth_Controller.dart';
import 'package:app_pemrograman_mobile/Main/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_pemrograman_mobile/Main/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final prefs = await SharedPreferences.getInstance();

  MyApp.token = prefs.get("token")?.toString();
  MyApp.id = prefs.get("id")?.toString();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static String? token;
  static String? id;

  const MyApp({Key? key}) : super(key: key);
  //This widget is the root of your application

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());

    return GetMaterialApp(
      title: 'Aplikasi PM',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
      },
    );
  }
}
