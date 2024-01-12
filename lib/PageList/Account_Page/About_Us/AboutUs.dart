import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PHeader(),
            Padding(padding: EdgeInsets.all(75.0)),
            Text(
              'SWALAYAN E-SHOP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Image.asset('assets/Logo-SB/Icon-SB.png'),
            SizedBox(height: 30),
            Text(
              'Dibuat Oleh:\nKelompok A.S.T.A - Pemrograman Mobile KH201',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
