import 'package:app_pemrograman_mobile/Controller/Auth_Controller.dart';
import 'package:app_pemrograman_mobile/PageList/Account_Page/About_Us/AboutUs.dart';
import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileGet.dart';
import 'package:app_pemrograman_mobile/PageList/Log_Page/LogPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountPage extends StatefulWidget {
  const AccountPage();

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find<AuthController>();
    authController.getUserInfo();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Column(children: [
        Expanded(
            child: ListView(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: authController.myUser.value.image == null
                          ? DecorationImage(
                              image: AssetImage('assets/Misc/Refresh.png'),
                              fit: BoxFit.fill)
                          : DecorationImage(
                              image: NetworkImage(
                                  authController.myUser.value.image!),
                              fit: BoxFit.fill)),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    authController.myUser.value.username == null
                        ? Text(
                            "Username",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 161, 71, 149),
                            ),
                          )
                        : Text(
                            authController.myUser.value.username ?? '',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 161, 71, 149),
                            ),
                          ),
                    SizedBox(height: 5),
                    authController.myUser.value.name == null
                        ? Text(
                            "Nama",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)),
                          )
                        : Text(
                            authController.myUser.value.name ?? '',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)),
                          ),
                    authController.myUser.value.handphone == null
                        ? Text(
                            "Nomor Telepon",
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)),
                          )
                        : Text(
                            authController.myUser.value.handphone ?? '',
                            style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.8)),
                          ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            MenuButton(
              icons: Icons.edit,
              text: "Ubah Profil",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfileGet()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            MenuButton(
              icons: Icons.credit_card,
              text: "Akun Bank",
              press: () {},
            ),
            SizedBox(
              height: 10,
            ),
            MenuButton(
              icons: Icons.info,
              text: "Tentang Kami",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AboutUs()));
              },
            ),
            SizedBox(
              height: 10,
            ),
            MenuButton(
              icons: Icons.logout,
              text: "Keluar",
              press: logout,
            ),
          ],
        ))
      ]),
    );
  }

  void logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('id');
    await FirebaseAuth.instance.signOut();

    Get.off(AuthScreen());
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.text,
    required this.icons,
    required this.press,
  });

  final icons;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.all(Colors.white.withOpacity(0.1)),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icons,
              color: Color.fromARGB(255, 161, 71, 149),
              size: 30,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 243, 225, 239)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
