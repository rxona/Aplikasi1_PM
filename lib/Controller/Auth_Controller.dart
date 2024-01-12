import 'dart:io';
import 'package:app_pemrograman_mobile/Model/User_Model.dart';
import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileReg.dart';
import 'package:app_pemrograman_mobile/Widgets/TheWidgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

import 'package:path/path.dart' as Path;

class AuthController extends GetxController {
  var isProfileUploading = false.obs;

  void decideRoute() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get()
          .then((value) {
        if (value.exists) {
          Get.to(() => HF());
        } else {
          Get.to(() => ProfileReg());
        }
      });
    }
  }

  uploadImage(File image) async {
    String imageUrl = '';
    String fileName = Path.basename(image.path);
    var reference = FirebaseStorage.instance.ref().child('users/$fileName');
    UploadTask uploadTask = reference.putFile(image);
    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
    await taskSnapshot.ref.getDownloadURL().then(
      (value) {
        imageUrl = value;
        print("Download URL: $value");
      },
    );

    return imageUrl;
  }

  storeUserInfo(File? selectedImage, String name, String username,
      String address, String handphone,
      {String url = ''}) async {
    String url_empty = url;
    if (selectedImage != null) {
      url_empty = await uploadImage(selectedImage);
    }
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance.collection('users').doc(uid).set({
      'image': url_empty,
      'name': name,
      'username': username,
      'address': address,
      'handphone': handphone
    }).then((value) {
      isProfileUploading(false);
      Get.to(() => HF());
    });
  }

  var myUser = User_Model().obs;

  getUserInfo() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .snapshots()
        .listen((event) {
      myUser.value = User_Model.fromJson(event.data()!);
    });
  }
}
