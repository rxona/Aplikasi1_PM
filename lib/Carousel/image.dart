import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String image;

  Category({
    required this.image,
  });

  @override
  List<Object?> get props => [image];

  static List<Category> categories = [
    Category(image: "assets/Carousel_Banner/Sample1.jpg"),
    Category(image: "assets/Carousel_Banner/Sample2.jpg"),
    Category(image: "assets/Carousel_Banner/Sample3.jpg"),
    Category(image: "assets/Carousel_Banner/Sample4.jpg"),
    Category(image: "assets/Carousel_Banner/Sample5.jpg"),
  ];
}
