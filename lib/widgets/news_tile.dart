import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/wep_view.dart';


// cached network image
class NewsTile extends StatelessWidget {
  final ArticleModel article;
  const NewsTile({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         final link = article.url; 
    if (link.isEmpty) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => WepViewPage(
          url: link,
          title: article.title,
        ),
      ),
    );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: article.urlToImage != null && article.urlToImage!.isNotEmpty
                  ? Image.network(
                      article.urlToImage!,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Container(
                          height: 200,
                          color: Colors.grey.shade300,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.image_not_supported),
                        );
                      },
                    )
                  : Container(
                      height: 200,
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.image_not_supported),
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
        ),
      ),
    );
  }
}
