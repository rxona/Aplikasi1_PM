import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/2Shoe_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/3Shoe_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/4Shoe_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/5Shoe_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Shoe_SubPage/Shoe_Detail.dart';
import 'package:flutter/material.dart';

class Shoe extends StatefulWidget {
  const Shoe({super.key});

  @override
  State<Shoe> createState() => _ShoeState();
}

class _ShoeState extends State<Shoe> {
  List<Item_Box> boxes = [];

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Sepatu Sendal Wanita Emory",
          price: "Rp200.000",
          image: "assets/Category/Shoe/1.1.jpeg"),
      Item_Box(
          title: "Sepatu Wanita Canvas Zeodda Suzy",
          price: "Rp100.000",
          image: "assets/Category/Shoe/2.1.jpeg"),
      Item_Box(
          title: "Sepatu Wanita Flat Karet Jelly HYS 857",
          price: "Rp70.000",
          image: "assets/Category/Shoe/3.1.jpeg"),
      Item_Box(
          title: "Sepatu Sneakers Wanita Rajut Sport LV0102",
          price: "Rp80.000",
          image: "assets/Category/Shoe/4.1.jpeg"),
      Item_Box(
          title: "Sepatu Slip On Wanita S08",
          price: "Rp50.000",
          image: "assets/Category/Shoe/5.1.jpeg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 38, 32, 104)),
              child: Container(
                color: Color.fromARGB(255, 204, 204, 204),
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari produk baju disini!',
                          hintStyle: TextStyle(fontSize: 15.0),
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_list),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: boxes.map((box) {
                  return buildBox(box);
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBox(Item_Box box) {
    return GestureDetector(
      onTap: () async {
        if (box.title == "Sepatu Sendal Wanita Emory") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe_Detail()));
        } else if (box.title == "Sepatu Wanita Canvas Zeodda Suzy") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe_Detail2()));
        } else if (box.title == "Sepatu Wanita Flat Karet Jelly HYS 857") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe_Detail3()));
        } else if (box.title == "Sepatu Sneakers Wanita Rajut Sport LV0102") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe_Detail4()));
        } else {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Shoe_Detail5()));
        }
      },
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              child: Image.asset(
                box.image,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                box.title,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(box.price),
            )
          ],
        ),
      ),
    );
  }
}

class Item_Box {
  final String title;
  final String price;
  final String image;

  Item_Box({required this.title, required this.price, required this.image});
}
