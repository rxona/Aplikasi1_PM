import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/2Misc_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/3Misc_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/4Misc_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/5Misc_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Misc_SubPage/Misc_Detail.dart';
import 'package:flutter/material.dart';

class Misc extends StatefulWidget {
  const Misc({super.key});

  @override
  State<Misc> createState() => _MiscState();
}

class _MiscState extends State<Misc> {
  List<Item_Box> boxes = [];

  String SearchBar = '';

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Pisau Talenan/Gunting Pemotong Sayur Serba Guna",
          price: "Rp20.000",
          image: "assets/Category/Misc/1.1.jpeg"),
      Item_Box(
          title: "Selang Air Magic Hose 22.5m / 75ft",
          price: "Rp45.000",
          image: "assets/Category/Misc/2.1.jpeg"),
      Item_Box(
          title: "Masker 3M Anak Nexcare Daily Kids",
          price: "Rp19.900",
          image: "assets/Category/Misc/3.1.jpeg"),
      Item_Box(
          title: "Snap N Grip Kunci Inggris Isi 2",
          price: "Rp20.000",
          image: "assets/Category/Misc/4.1.jpeg"),
      Item_Box(
          title: "Gunting Sayur 5 Lapis (3 Cm)",
          price: "Rp20.000",
          image: "assets/Category/Misc/5.1.jpeg"),
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
                  children: boxes
                      .where((box) => box.title
                          .toLowerCase()
                          .contains(SearchBar.toLowerCase()))
                      .map((box) {
                    return buildBox(box);
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBox(Item_Box box) {
    return GestureDetector(
      onTap: () async {
        if (box.title == "Pisau Talenan/Gunting Pemotong Sayur Serba Guna") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Misc_Detail()));
        } else if (box.title == "Selang Air Magic Hose 22.5m / 75ft") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Misc_Detail2()));
        } else if (box.title == "Masker 3M Anak Nexcare Daily Kids") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Misc_Detail3()));
        } else if (box.title == "Snap N Grip Kunci Inggris Isi 2") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Misc_Detail4()));
        } else {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Misc_Detail5()));
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
