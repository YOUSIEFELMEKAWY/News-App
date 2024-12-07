import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/CategoryScreen.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.image, required this.CategoryName});

  final String image;
  final String CategoryName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CategoryScreen(
              Category: CategoryName,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
          child: Center(
              child: Text(
            CategoryName,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )),
        ),
      ),
    );
  }
}
