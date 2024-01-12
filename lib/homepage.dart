// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/AllCategory.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/Bag.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/Cap.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/Pants.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/Shoe.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/T-shirt.dart';

import 'Carousel/image.dart';
import 'Main/Column_Homepage.dart';
import 'Widgets/TheWidgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    buildFileColumn(context, "Cap", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cap()),
                      );
                    }),
                    buildFileColumn(context, "T-shirt", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tshirt()),
                      );
                    }),
                    buildFileColumn(context, "Pants", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pants()),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildFileColumn(context, "Bag", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bag()),
                      );
                    }),
                    buildFileColumn(context, "Shoe", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shoe()),
                      );
                    }),
                    buildFileColumn2(context, "Ellipse_All", "Catalog_All", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => All_Category()),
                      );
                    }),
                  ],
                ),
                SizedBox(
                  height: 140,
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
