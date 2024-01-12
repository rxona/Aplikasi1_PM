import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Misc_Detail extends StatefulWidget {
  const Misc_Detail({super.key});

  @override
  State<Misc_Detail> createState() => _Misc_DetailState();
}

class _Misc_DetailState extends State<Misc_Detail> {
  final List<String> _image = [
    "assets/Category/Misc/1.1.jpeg",
    "assets/Category/Misc/1.2.jpeg",
    "assets/Category/Misc/1.3.jpeg",
    "assets/Category/Misc/1.4.jpeg"
  ];
  int _currentSlide = 0;
  // int selectedButton = 2;

  // void selectButton(int buttonIndex) {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 204, 204),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PHeader(),
              CarouselSlider(
                items: _image.map((image) {
                  return Builder(
                    builder: (context) {
                      return Image.asset(
                        image,
                        fit: BoxFit.cover,
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                    height: 200.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, _) {
                      setState(() {
                        _currentSlide = index;
                      });
                    }),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Pisau Talenan/Gunting\nPemotong Sayur\nSerba Guna",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp20.000",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Deskripsi Produk",
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- Bahan: PP + PTR + 2cr14 menangani + POM chopper + 5cr15MoV blade\n- Tebal pisau: 1.2mm\n- Ukuran papan memotong: 11,5 * 2.7cm",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "- Panjang: 247mm\n- Ukuran produk: 25.5 * 7.5 * 3cm\n",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\nKeunggulan pemotong pintar:\n- 2-in-1 pisau dan talenan\n- Chops & Slice di Detik\n- Pegangan ergonomis mudah di tangan",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "- Premium pisau stainless steel\n- Kait keamanan terus itu ditutup\n- Kerja rapi (dapur tidak berantakan)",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: Text(
                          "Tambahkan ke Keranjang",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}
