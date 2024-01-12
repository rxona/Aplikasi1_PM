// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:app_pemrograman_mobile/Login_Register/Login.dart';
import 'package:app_pemrograman_mobile/Login_Register/Register.dart';
import 'package:app_pemrograman_mobile/Widgets/TheWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  RegisterationController registerationController =
      Get.put(RegisterationController());

  LoginController loginController = Get.put(LoginController());

  var isLogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(36),
          child: Center(
            child: Obx(
              () => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        'WELCOME',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          color: !isLogin.value ? Colors.purple : Colors.white,
                          onPressed: () {
                            isLogin.value = false;
                          },
                          child: Text('Register'),
                        ),
                        MaterialButton(
                          color: isLogin.value ? Colors.purple : Colors.white,
                          onPressed: () {
                            isLogin.value = true;
                          },
                          child: Text('Login'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    isLogin.value ? loginWidget() : registerWidget()
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget registerWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(registerationController.name, 'Nama'),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(registerationController.email, 'Email'),
        SizedBox(
          height: 20,
        ),
        InputTextPass(registerationController.pass, 'Kata Sandi'),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
          onPressed: () => registerationController.registerWithEmail(),
          title: 'Daftar',
        )
      ],
    );
  }

  Widget loginWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(loginController.email, 'Email'),
        SizedBox(
          height: 20,
        ),
        InputTextPass(loginController.pass, 'Kata Sandi'),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
          onPressed: () => loginController.loginWithEmail(),
          title: 'Masuk',
        )
      ],
    );
  }
}
