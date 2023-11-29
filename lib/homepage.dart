// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'Carousel/image.dart';
import 'Main/Column_Homepage.dart';
import 'PageList/Search_Page/Search.dart';
import 'PageList/Account_Page/Account.dart';
import 'PageList/Discovery_Page/Discovery.dart';
import 'PageList/Transaction_Page/Transaction.dart';
import 'Widgets/Widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final screens = [
    DiscoveryPage(),
    SearchPage(),
    TransactionPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(children: [
                        Padding(padding: EdgeInsets.all(10.0)),
                        CarouselSlider(
                          options: CarouselOptions(
                            viewportFraction: 0.8,
                            aspectRatio: 2 / 1,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 7),
                            pauseAutoPlayOnTouch: true,
                            enlargeCenterPage: true,
                          ),
                          items: Category.categories
                              .map((Category) =>
                                  HeroCarouselCard(category: Category))
                              .toList(),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildFileColumn('Cap'),
                    buildFileColumn('T-shirt'),
                    buildFileColumn('Pants'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildFileColumn('Bag'),
                    buildFileColumn('Shoe'),
                    buildFileColumn2('Ellipse_All', 'Catalog_All'),
                  ],
                ),
                SizedBox(
                  height: 115,
                ),
                Row(
                  children: [
                    Text(
                      "Produk Diskon Bulan Ini",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeroCarouselCard(
                          category: Category.categories[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Text(
                      "Produk Diskon Bulan Ini",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.categories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeroCarouselCard(
                          category: Category.categories[index],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ], // end of listview children
            ),
          ),
        ], // end of column children
      ),
    );
  }
}
