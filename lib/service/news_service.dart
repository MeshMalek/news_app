import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=5689a21b4f13446285b08d6d30c35f74',
      );

      if (response.data == null) {
        return [];
      }

      final jsonData = response.data as Map<String, dynamic>;
      final articles = jsonData['articles'] as List<dynamic>?;

      if (articles == null || articles.isEmpty) {
        return [];
      }

      final articlelist = <ArticleModel>[];
      for (var article in articles) {
        try {
          if (article is Map<String, dynamic>) {
            final model = ArticleModel.fromJson(article);
            // Only add if title is not null/empty
            if (model.title.isNotEmpty) {
              articlelist.add(model);
            }
          }
        } catch (e) {
          // Skip invalid articles
          continue;
        }
      }

      return articlelist;
    } catch (e) {
      // Catch all errors including DioException
      return [];
    }
  }
}
