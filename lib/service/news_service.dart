import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=5689a21b4f13446285b08d6d30c35f74',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlelist = [];
    for (var article in articles) {
      articlelist.add(ArticleModel.fromJson(article));
    }

    return articlelist;
  }
}
