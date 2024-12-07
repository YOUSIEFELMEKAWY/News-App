import 'package:dio/dio.dart';

import '../models/NewsModel.dart';

class NewsService
{
  final dio = Dio();

  Future<List<Articles>> getNews({required String Category}) async
  {
    try
    {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=${Category}&apiKey=b700668063bb46c49b2c74a67057d4ad');
      var jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<Articles> news = [];

      for(var article in articles)
      {
        Articles new1 = Articles.fromJson(article);
        news.add(new1);
      }
      return news;
    }catch(e)
    {
      return [];
    }
  }
}