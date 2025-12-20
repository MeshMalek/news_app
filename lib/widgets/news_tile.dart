import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  final ArticleModel article;
  const NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: article.urlToImage != null
              ? Image.network(
                  article.urlToImage!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Placeholder(
                  color: Colors.blue,
                  strokeWidth: 2.0,
                  fallbackHeight: 100.0,
                ),
        ),
        const SizedBox(height: 12),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 8),
        Text(
          article.description ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
