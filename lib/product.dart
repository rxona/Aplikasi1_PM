class Product {
  final String id;
  final String name;
  final int price;
  final List<String> images;
  final String description;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.images,
      required this.description});
}
