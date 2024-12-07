import 'package:flutter/material.dart';

import '../models/NewsModel.dart';
import '../screens/NewScreen.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({super.key,required this.articles});

  final Articles articles;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen(
          image: articles.urlToImage ?? 'https://static.thenounproject.com/png/504708-200.png',
          title: articles.title ?? '',
          author: articles.author ?? '',
          description: articles.description ?? '',
          publishedAt: articles.publishedAt ?? '',
          sourceName: articles.source?.name ?? '',
        ),));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articles.urlToImage ?? 'https://static.thenounproject.com/png/504708-200.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            articles.title ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articles.description ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
    ;
  }
}
