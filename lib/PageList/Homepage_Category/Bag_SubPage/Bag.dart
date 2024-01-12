import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/2Bag_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/3Bag_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/4Bag_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/5Bag_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Bag_SubPage/Bag_Detail.dart';
import 'package:flutter/material.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  List<Item_Box> boxes = [];

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Tas Fashion Import PU GLOSSY",
          price: "Rp125.000",
          image: "assets/Category/Bag/1.1.jpeg"),
      Item_Box(
          title: "Dompet Rajut Asli Jogja",
          price: "Rp130.000",
          image: "assets/Category/Bag/2.1.jpeg"),
      Item_Box(
          title: "Dompet Kartu Lipat Mini CELSA",
          price: "Rp90.000",
          image: "assets/Category/Bag/3.1.jpeg"),
      Item_Box(
          title: "BELIYA MISEL Slingbag",
          price: "Rp100.000",
          image: "assets/Category/Bag/4.1.jpeg"),
      Item_Box(
          title: "Thailand Canvas Tote Bag",
          price: "Rp65.000",
          image: "assets/Category/Bag/5.1.jpeg"),
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
        if (box.title == "Tas Fashion Import PU GLOSSY") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bag_Detail()));
        } else if (box.title == "Dompet Rajut Asli Jogja") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bag_Detail2()));
        } else if (box.title == "Dompet Kartu Lipat Mini CELSA") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bag_Detail3()));
        } else if (box.title == "BELIYA MISEL Slingbag") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bag_Detail4()));
        } else {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Bag_Detail5()));
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
