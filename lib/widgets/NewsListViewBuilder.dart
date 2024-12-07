import 'package:flutter/cupertino.dart';
import '../models/NewsModel.dart';
import '../services/NewsService.dart';
import 'LoadingNews.dart';
import 'NewsListView.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.Category});
  final String Category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(Category: widget.Category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Articles>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('There is no news'),
              ),
            );
          } else {
            return const LoadingNews();
          }
        });
  }
}
