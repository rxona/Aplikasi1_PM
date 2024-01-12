import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String image;

  Category({
    required this.image,
  });

  @override
  List<Object?> get props => [image];

  static List<Category> categories = [
    Category(image: "assets/Carousel_Banner/1.jpeg"),
    Category(image: "assets/Carousel_Banner/2.jpeg"),
    Category(image: "assets/Carousel_Banner/3.jpeg"),
    Category(image: "assets/Carousel_Banner/4.jpg"),
    Category(image: "assets/Carousel_Banner/5.jpeg"),
  ];
}
