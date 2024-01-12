import 'package:equatable/equatable.dart';

class Category_ID extends Equatable {
  final String image;

  Category_ID({
    required this.image,
  });

  @override
  List<Object?> get props => [image];

  static List<Category_ID> categories = [
    Category_ID(image: "assets/Category/Cap/2.1.jpeg"),
    Category_ID(image: "assets/Category/T-Shirt/1.1.jpeg"),
    Category_ID(image: "assets/Category/Pants/3.1.jpeg"),
    Category_ID(image: "assets/Category/Fitness/1.1.png"),
    Category_ID(image: "assets/Category/Misc/4.1.jpeg"),
  ];
}
