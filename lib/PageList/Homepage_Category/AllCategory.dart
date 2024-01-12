import 'package:app_pemrograman_mobile/PageList/Account_Page/Profil_Detail/ProfileHeader.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/Bag.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/Cap.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/Fit.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/Misc.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/Pants.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/Shoe.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/T-shirt.dart';
import 'package:flutter/material.dart';

class All_Category extends StatefulWidget {
  const All_Category({super.key});

  @override
  State<All_Category> createState() => _All_CategoryState();
}

class _All_CategoryState extends State<All_Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: SafeArea(
        child: Column(children: [
          PHeader(),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color.fromARGB(255, 161, 71, 149),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(20),
                child: Align(
                    child: Stack(
                  children: [
                    Text(
                      "Kategori",
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 243, 225, 239),
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Topi", "Cap", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cap()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Baju", "T-shirt", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tshirt()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Celana", "Pants", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pants()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Tas/Dompet", "Bag", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Bag()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Sepatu", "Shoe", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Shoe()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Alat Fitnes", "Fitness", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Fitness()),
            );
          }),
          SizedBox(
            height: 20,
          ),
          CategoriesRow(context, "Alat Lainnya", "Tool", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Misc()),
            );
          }),
        ]),
      ),
    );
  }

  Row CategoriesRow(BuildContext context, String categoryName, String image,
      Function() onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset('assets/Catalog_Short/$image.png',
                        fit: BoxFit.contain),
                    SizedBox(width: 20),
                    Text(
                      categoryName,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 161, 71, 149),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
