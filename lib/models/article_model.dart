class ArticleModel {
  final String title;
  final String? description;
  final String? urlToImage;

  ArticleModel({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title']?.toString() ?? '',
      description: json['description']?.toString(),
      urlToImage: json['urlToImage']?.toString(),
    );
  }
}
