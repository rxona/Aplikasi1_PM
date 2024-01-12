import 'package:flutter/material.dart';
import '../../category.dart';
import '../../screens/products.dart';

class All_Category extends StatefulWidget {
  const All_Category({super.key});

  @override
  State<All_Category> createState() => _All_CategoryState();
}

class _All_CategoryState extends State<All_Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kategori'),
      ),
      backgroundColor: Color.fromARGB(255, 204, 204, 204),
      body: ListView.separated(
        itemCount: categories.length,
        itemBuilder: (c, i) {
          return CategoriesRow(context, categories[i].name, categories[i].image,
              () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductsScreen(
                        products: categories[i].products,
                      )),
            );
          });
        },
        separatorBuilder: (context, index) => Divider(height: 20),
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
