import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.author,
      required this.publishedAt,
      required this.description,
      required this.sourceName});

  final String image;
  final String title;
  final String author;
  final String publishedAt;
  final String description;
  final String sourceName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10.0), // Rounded corners for the image
                child: Image.network(
                  image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                'By $author - $publishedAt',
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 10),

              Text(
                description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              // Source
              Text(
                'Source: $sourceName',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const Divider(
                  thickness: 1,
                  height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
