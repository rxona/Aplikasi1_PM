import 'dart:io';

import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:app_pemrograman_mobile/Widgets/TheWidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:app_pemrograman_mobile/Controller/Auth_Controller.dart';

File? selectedImage;

class ProfileReg extends StatefulWidget {
  const ProfileReg({super.key});

  @override
  State<ProfileReg> createState() => _ProfileRegState();
}

class _ProfileRegState extends State<ProfileReg> {
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController handphone = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AuthController authController = Get.find<AuthController>();

  final ImagePicker _picker = ImagePicker();
  File? selectedImage;

  getImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      selectedImage = File(image.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: ListView(children: [
            Container(
              height: Get.height * 0.35,
              child: Stack(
                children: [
                  PHeader(),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
                          onTap: () async {
                            getImage(ImageSource.camera);
                            // await availableCameras().then((value) =>
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (_) =>
                            //                 CameraPage(cameras: value))));
                          },
                          child: selectedImage == null
                              ? Container(
                                  width: 150,
                                  height: 150,
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[400]),
                                  child: Center(
                                    child: Icon(
                                      Icons.camera_alt_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              : Container(
                                  width: 150,
                                  height: 150,
                                  margin: EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: FileImage(selectedImage!),
                                          fit: BoxFit.fill),
                                      shape: BoxShape.circle,
                                      color: Colors.grey[400]),
                                ))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(children: [
                  InputTextPREG("Nama", Icons.person, name, (String? input) {
                    if (input!.isEmpty) {
                      return 'Masukkan Nama Anda!';
                    }
                    if (input.length > 10) {
                      return 'Masukkan Nama Kurang dari 10 Huruf!';
                    }
                    if (input.length <= 2) {
                      return 'Masukkan Nama Anda yang Benar!';
                    }

                    return null;
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  InputTextPREG("Username", Icons.account_box, username,
                      (String? input) {
                    if (input!.isEmpty) {
                      return 'Masukkan Username Anda!';
                    }
                    if (input.length > 20) {
                      return 'Masukkan Username Kurang Dari 20 Huruf!';
                    }
                    if (input.length < 2) {
                      return 'Masukkan Username yang Lebih Panjang!';
                    }

                    return null;
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  InputTextPREG("Alamat Domisili", Icons.home_filled, address,
                      (String? input) {
                    if (input!.isEmpty) {
                      return 'Masukkan Alamat Anda!';
                    }
                    if (input.length > 200) {
                      return 'Masukkan Alamat Kurang Dari 200 Huruf!';
                    }
                    if (input.length < 3) {
                      return 'Masukkan Alamat yang Benar!';
                    }

                    return null;
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  InputTextPREG(
                      "Nomor Handphone", Icons.contact_phone, handphone,
                      (String? input) {
                    if (input!.isEmpty) {
                      return 'Masukkan Nomor Telepon Anda!';
                    }
                    if (input.length > 15) {
                      return 'Masukkan Nomor Teleponnya yang Benar!';
                    }
                    final regex = RegExp(r'^[0-9]+$');
                    if (!regex.hasMatch(input)) {
                      return 'Masukkan NOMOR/ANGKA bukan HURUF dan/ataupun SIMBOL!';
                    }

                    return null;
                  }),
                  SizedBox(
                    height: 30,
                  ),
                  Obx(() => authController.isProfileUploading.value
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : SubmitButton(
                          onPressed: () {
                            if (!formKey.currentState!.validate()) {
                              return;
                            }

                            if (selectedImage == null) {
                              Get.snackbar(
                                'ERROR',
                                'Tambahkan Gambarmu!',
                                titleText: Text(
                                  'ERROR',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                                messageText: Text(
                                  'Tambahkan Gambarmu!',
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                              return;
                            }
                            authController.isProfileUploading(true);
                            authController.storeUserInfo(
                                selectedImage!,
                                name.text,
                                username.text,
                                address.text,
                                handphone.text);
                          },
                          title: 'Kirim',
                        ))
                ]),
              ),
            )
          ]))
        ],
      ),
    );
  }

  InputTextPREG(String main, IconData iconData,
      TextEditingController controller, Function validator,
      {Function? onTap, bool readOnly = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          main,
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 38, 32, 104),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ],
              borderRadius: BorderRadius.circular(7)),
          child: TextFormField(
            validator: (input) => validator(input),
            readOnly: readOnly,
            onTap: () => onTap!(),
            controller: controller,
            style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: Icon(
                iconData,
                color: Color.fromARGB(255, 243, 225, 239),
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
