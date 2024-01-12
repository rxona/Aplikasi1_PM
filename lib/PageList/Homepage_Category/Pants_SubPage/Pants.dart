import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/2Pants_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/3Pants_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/4Pants_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/5Pants_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Pants_SubPage/Pants_Detail.dart';
import 'package:flutter/material.dart';

class Pants extends StatefulWidget {
  const Pants({super.key});

  @override
  State<Pants> createState() => _PantsState();
}

class _PantsState extends State<Pants> {
  List<Item_Box> boxes = [];

  String SearchBar = '';

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Celana Panjang JOGER Kotak",
          price: "Rp50.000",
          image: "assets/Category/Pants/1.1.jpeg"),
      Item_Box(
          title: "Celana Panjang JOGER Stripped",
          price: "Rp50.000",
          image: "assets/Category/Pants/2.1.jpeg"),
      Item_Box(
          title: "Celana Panjang JOGER JOOY",
          price: "Rp50.000",
          image: "assets/Category/Pants/3.1.jpeg"),
      Item_Box(
          title: "Celana Panjang Atletis KULOT",
          price: "Rp80.000",
          image: "assets/Category/Pants/4.1.jpeg"),
      Item_Box(
          title: "Celana Panjang Jegging Jumbo",
          price: "Rp90.000",
          image: "assets/Category/Pants/5.1.jpeg"),
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
        if (box.title == "Celana Panjang JOGER Kotak") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Pants_Detail()));
        } else if (box.title == "Celana Panjang JOGER Stripped") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Pants_Detail2()));
        } else if (box.title == "Celana Panjang JOGER JOOY") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Pants_Detail3()));
        } else if (box.title == "Celana Panjang Atletis KULOT") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Pants_Detail4()));
        } else {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Pants_Detail5()));
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
