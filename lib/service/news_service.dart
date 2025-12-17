import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  void getNews() async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=5689a21b4f13446285b08d6d30c35f74',
    );
    print(response);
  }
}
