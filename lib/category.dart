import './product.dart';

class Category {
  final String name;
  final String image;
  final List<Product> products;

  Category({required this.name, required this.image, required this.products});
}

List<Category> categories = [
  Category(name: 'Topi', image: 'Cap', products: [
    Product(
        id: '1',
        name: "Topi Polos Ring Besi Baseball",
        price: 15000,
        images: [
          "assets/Category/Cap/1.1.jpeg",
          "assets/Category/Cap/1.2.jpeg",
          "assets/Category/Cap/1.3.jpeg"
        ],
        description: 'Ini deskripsi'),
    Product(
        id: '1',
        name: "Topi Baseball Los Angeles (LA)",
        price: 20000,
        images: ["assets/Category/Cap/2.1.jpeg"],
        description: 'Ini deskripsi'),
    Product(
        id: '1',
        name: "Topi Ring Besi Bordir 'M'",
        price: 20000,
        images: ["assets/Category/Cap/3.1.jpeg"],
        description: 'Ini deskripsi'),
    Product(
        id: '1',
        name: "Topi Distro Baseball Bunga Mawar",
        price: 30000,
        images: ["assets/Category/Cap/4.1.jpeg"],
        description: 'Ini deskripsi'),
    Product(
        id: '1',
        name: "Topi Jaring Polos Unisex",
        price: 15000,
        images: ["assets/Category/Cap/5.1.jpeg"],
        description: 'Ini deskripsi'),
  ]),
  Category(name: 'Baju', image: 'T-shirt', products: []),
];
