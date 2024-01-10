import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/2Fit_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/3Fit_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/4Fit_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/5Fit_Detail.dart';
import 'package:app_pemrograman_mobile/PageList/Homepage_Category/Fitness_SubPage/Fit_Detail.dart';
import 'package:flutter/material.dart';

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  List<Item_Box> boxes = [];

  @override
  void initState() {
    super.initState();
    boxes = [
      Item_Box(
          title: "Spinning Bike - Sepeda Statis/Sepeda Platinum",
          price: "Rp1.100.000",
          image: "assets/Category/Fitness/1.1.png"),
      Item_Box(
          title: "Treadmill Manual 4 Fungsi",
          price: "Rp3.200.000",
          image: "assets/Category/Fitness/2.1.png"),
      Item_Box(
          title: "Sepeda Statis Magnetic Upright Bike",
          price: "Rp2.590.000",
          image: "assets/Category/Fitness/3.1.png"),
      Item_Box(
          title: "Treadmill Elektrik T500MT",
          price: "Rp3.950.000",
          image: "assets/Category/Fitness/4.1.png"),
      Item_Box(
          title: "Treadmill Manual 6 Fungsi",
          price: "Rp2.090.000",
          image: "assets/Category/Fitness/5.1.png"),
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
        if (box.title == "Spinning Bike - Sepeda Statis/Sepeda Platinum") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Fit_Detail()));
        } else if (box.title == "Treadmill Manual 4 Fungsi") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Fit_Detail2()));
        } else if (box.title == "Sepeda Statis Magnetic Upright Bike") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Fit_Detail3()));
        } else if (box.title == "Treadmill Elektrik T500MT") {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Fit_Detail4()));
        } else {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => Fit_Detail5()));
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
