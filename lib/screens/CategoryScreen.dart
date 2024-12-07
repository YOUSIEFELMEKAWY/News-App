import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/NewsListViewBuilder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.Category});
  final String Category;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CustomScrollView(
            slivers: [
              NewsListViewBuilder(
                Category: Category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
