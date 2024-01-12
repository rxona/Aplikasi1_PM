import 'dart:convert';

import 'package:app_pemrograman_mobile/API/ApiLogin.dart';
import 'package:app_pemrograman_mobile/Controller/Auth_Controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var isPasswordHidden = true.obs;

  AuthController authController = Get.find<AuthController>();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail() async {
    var headers = {'Content-Type': 'application/json'};
    try {
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);
      Map body = {'email': email.text.trim(), 'password': pass.text};
      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          var id = json['data']['Id'];
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('token', token.toString());
          await prefs?.setString('id', id.toString());
          await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: email.text, password: pass.text);

          email.clear();
          pass.clear();
          authController.decideRoute();
        } else if (json['code'] == 1) {
          throw jsonDecode(response.body)['message'];
        }
      } else {
        throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
      }
    } catch (error) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(error.toString())],
            );
          });
    }
  }
}
