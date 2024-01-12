import 'package:app_pemrograman_mobile/screens/Product.dart';
import 'package:flutter/material.dart';
import '../product.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key, required this.products});

  final List<Product> products;

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
                children: products.map((box) {
                  return buildBox(context, box);
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBox(BuildContext context, Product product) {
    return GestureDetector(
      onTap: () async {
        await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductScreen(product: product)));
      },
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              child: Image.asset(
                product.images[0],
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                product.name,
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(product.price.toString()),
            )
          ],
        ),
      ),
    );
  }
}
