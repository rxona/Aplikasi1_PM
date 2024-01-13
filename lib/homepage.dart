// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:app_pemrograman_mobile/Carousel/Clickable_image.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/AllCategory.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/Bag.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/2Cap_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/Cap.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/Fit_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/4Misc_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/3Pants_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/Pants.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/Shoe.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/T-shirt.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/T-shirt_Detail.dart';
import 'package:app_pemrograman_mobile/Widgets/Clickable_ID.dart';

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
                                  ImageDisplay(category: Category))
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
                      "TOP 5 Produk Rekomendasi Kami:",
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
                        child: Clickable_ID(
                          category_ID: Category_ID.categories[index],
                          OnPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => getRouteByCategory(
                                        Category_ID.categories[index])));
                          },
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

Widget getRouteByCategory(Category_ID category) {
  switch (category.image) {
    case "assets/Category/Cap/2.1.jpeg":
      return Cap_Detail2();
    case "assets/Category/T-Shirt/1.1.jpeg":
      return Tshirt_Detail();
    case "assets/Category/Pants/3.1.jpeg":
      return Pants_Detail3();
    case "assets/Category/Fitness/1.1.png":
      return Fit_Detail();
    case "assets/Category/Misc/4.1.jpeg":
      return Misc_Detail4();
    default:
      return HF(); // Rute default jika tidak ada yang cocok
  }
}
