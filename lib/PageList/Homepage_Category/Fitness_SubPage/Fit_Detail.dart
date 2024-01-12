import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Fit_Detail extends StatefulWidget {
  const Fit_Detail({super.key});

  @override
  State<Fit_Detail> createState() => _Fit_DetailState();
}

class _Fit_DetailState extends State<Fit_Detail> {
  final List<String> _image = [
    "assets/Category/Fitness/1.1.png",
    "assets/Category/Fitness/1.2.png",
    "assets/Category/Fitness/1.3.png",
    "assets/Category/Fitness/1.4.png"
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
                          "Spinning Bike - Sepeda Statis/\nSepeda Platinum",
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Rp1.100.000",
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
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sepeda Statis Multi Fungsi yang cocok untuk Olahraga dan teraphy. Fungsi dan Fitur Diantaranya:",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\n1. Dual Action Exercise\nSepeda statis ini memiliki 2 gerakan handel. Posisi handle diam bermanfaat untuk melatih otot jantung. Posisi handle bergerak untuk Fat-Burn, therapy STROKE dan PENGAPURAN.\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\n2. HeartRate Control System\nPembacaan denyut jantung melalui sensor sentuhan telapak tangan yang terletak pada gagang pegangan atau handel.\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\n3. Key Lock Handle\nPin atau Ring pengunci ini memiliki fungsi pengikat tuas handel. Anda cukup mencabut ring tanpa harus membongkar pedal.\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\nFEATURE:\nHeartRate W/Hand-Pulse, Adjustable High Seat\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\nFRAME:\nSteel Frame Oval Tube, Frame Size 30 x 60 mm, Fly Wheel Weight 2.5 kg\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\nLCD Display\n",
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            Text(
                              "\nTECH SPECS:\nAssembled 110 X 50 X 155 cm, Packaging 89 X 20 X 59 cm, Max User 90 kg, Gross Weight 20 kg, Nett Weight 18 kg\n",
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
