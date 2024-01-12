// ignore_for_file: prefer_const_constructors

import 'package:app_pemrograman_mobile/Login_Register/Login.dart';
import 'package:app_pemrograman_mobile/Login_Register/Register.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputTextPass extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  InputTextPass(this.textEditingController, this.hintText);

  final RegisterationController registerationController =
      Get.put(RegisterationController());
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46,
        child: Obx(
          () => TextField(
            obscureText: controller.isPasswordHidden.value,
            controller: textEditingController,
            decoration: InputDecoration(
                alignLabelWithHint: true,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                fillColor: Colors.white54,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey),
                suffix: InkWell(
                  child: Icon(
                      controller.isPasswordHidden.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                      size: 20),
                  onTap: () {
                    controller.isPasswordHidden.value =
                        !controller.isPasswordHidden.value;
                  },
                ),
                contentPadding: EdgeInsets.only(bottom: 15),
                focusColor: Colors.white60),
          ),
        ));
  }
}
