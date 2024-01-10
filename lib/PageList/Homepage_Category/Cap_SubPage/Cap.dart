import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/2Cap_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/3Cap_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/4Cap_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/5Cap_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Cap_SubPage/Cap_Detail.dart';
import 'package:flutter/material.dart';

class Cap extends StatefulWidget {
  const Cap({super.key});

  @override
  State<Cap> createState() => _CapState();
}

class _CapState extends State<Cap> {
  List<Item_Box> boxes = [];

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Topi Polos Ring Besi Baseball",
          price: "Rp15.000",
          image: "assets/Category/Cap/1.1.jpeg"),
      Item_Box(
          title: "Topi Baseball Los Angeles (LA)",
          price: "Rp20.000",
          image: "assets/Category/Cap/2.1.jpeg"),
      Item_Box(
          title: "Topi Ring Besi Bordir 'M'",
          price: "Rp20.000",
          image: "assets/Category/Cap/3.1.jpeg"),
      Item_Box(
          title: "Topi Distro Baseball Bunga Mawar",
          price: "Rp30.000",
          image: "assets/Category/Cap/4.1.jpeg"),
      Item_Box(
          title: "Topi Jaring Polos Unisex",
          price: "Rp15.000",
          image: "assets/Category/Cap/5.1.jpeg"),
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
        if (box.title == "Topi Polos Ring Besi Baseball") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cap_Detail()));
        } else if (box.title == "Topi Baseball Los Angeles (LA)") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cap_Detail2()));
        } else if (box.title == "Topi Ring Besi Bordir 'M'") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cap_Detail3()));
        } else if (box.title == "Topi Distro Baseball Bunga Mawar") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cap_Detail4()));
        } else {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cap_Detail5()));
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
