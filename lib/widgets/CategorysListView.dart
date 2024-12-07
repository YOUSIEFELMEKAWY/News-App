import 'package:flutter/cupertino.dart';

import '../models/CategoryModel.dart';
import 'CategoryCard.dart';

class CategoryslistView extends StatelessWidget {
  CategoryslistView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/business.avif', CategoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', CategoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.avif', CategoryName: 'General'),
    CategoryModel(image: 'assets/health.avif', CategoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', CategoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif', CategoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', CategoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryCard(
            CategoryName: categories[index].CategoryName,
            image: categories[index].image,
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
