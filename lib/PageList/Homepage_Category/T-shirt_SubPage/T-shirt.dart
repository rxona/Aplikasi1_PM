import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/3T-shirt_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/4T-shirt_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/5T-shirt_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/T-shirt_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/T-shirt_SubPage/2T-shirt_Detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Tshirt extends StatefulWidget {
  const Tshirt({super.key});

  @override
  State<Tshirt> createState() => _TshirtState();
}

class _TshirtState extends State<Tshirt> {
  List<Item_Box> boxes = [];

  String SearchBar = '';

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Set Pasmina Polka MAXI BUBBLE",
          price: "Rp50.000",
          image: "assets/Category/T-Shirt/1.1.jpeg"),
      Item_Box(
          title: "Set Jilbab UMMI SYARI",
          price: "Rp80.000",
          image: "assets/Category/T-Shirt/2.1.jpeg"),
      Item_Box(
          title: "Set Jilbab BIG FLOWER SYARI",
          price: "Rp80.000",
          image: "assets/Category/T-Shirt/3.1.jpeg"),
      Item_Box(
          title: "Set Pasmina Linda BAJU HIJABERS INDIA",
          price: "Rp80.000",
          image: "assets/Category/T-Shirt/4.1.jpeg"),
      Item_Box(
          title: "Set Pasmina KHANALIA",
          price: "Rp50.000",
          image: "assets/Category/T-Shirt/5.1.jpeg"),
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
                        onChanged: (value) {
                          setState(() {
                            SearchBar = value;
                          });
                        },
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
        if (box.title == "Set Pasmina Polka MAXI BUBBLE") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tshirt_Detail()));
        } else if (box.title == "Set Jilbab UMMI SYARI") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tshirt_Detail2()));
        } else if (box.title == "Set Jilbab BIG FLOWER SYARI") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tshirt_Detail3()));
        } else if (box.title == "Set Pasmina Linda BAJU HIJABERS INDIA") {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tshirt_Detail4()));
        } else {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tshirt_Detail5()));
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
