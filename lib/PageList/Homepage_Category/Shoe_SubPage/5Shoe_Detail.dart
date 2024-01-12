import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Shoe_Detail5 extends StatefulWidget {
  const Shoe_Detail5({super.key});

  @override
  State<Shoe_Detail5> createState() => _Shoe_Detail5State();
}

class _Shoe_Detail5State extends State<Shoe_Detail5> {
  final List<String> _image = [
    "assets/Category/Shoe/5.1.jpeg",
    "assets/Category/Shoe/5.2.jpeg",
    "assets/Category/Shoe/5.3.jpeg",
    "assets/Category/Shoe/5.4.jpeg",
    "assets/Category/Shoe/5.5.jpeg",
    "assets/Category/Shoe/5.6.jpeg",
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
                          "Sepatu Slip On Wanita S08",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp50.000",
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
                            "Memiliki 5 ukuran/size mulai dari 36 -> 40",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\nMemiliki berat 370 gram",
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\nTersedia dalam 4 warna yakni hitam, kuning, putih, dan salem",
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
