import 'package:flutter/cupertino.dart';


import '../models/NewsModel.dart';
import 'NewsCard.dart';

class NewsListView extends StatelessWidget {
  final List<Articles> articles;
  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: NewsCard(
              articles: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
