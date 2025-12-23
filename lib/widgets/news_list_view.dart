import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/skeleton_widget.dart';
import 'package:news_app/widgets/sliver_fill_widget.dart';

import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key,required this.category});
final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();

}

class _NewsListViewState extends State<NewsListView> {
  late Future<List<ArticleModel>> _newsFuture;
  final NewsService _newsService = NewsService(Dio());

  @override
  void initState() {
    super.initState();
    _newsFuture = _newsService.getGeneralNews(category: widget.category);
  }

  void _refreshNews() {
    setState(() {
      _newsFuture = _newsService.getGeneralNews(category: widget.category);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: _newsFuture,
      builder: (context, snapshot) {
        // Loading state: show skeletons
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const SkeletonizerWidget(),
              childCount: 5,
            ),
          );
        }

        // Error or null data
        if (snapshot.hasError || snapshot.data == null) {
          return SliverFillWidget(onRetry: _refreshNews);
        }

        final articles = snapshot.data!;

        // Empty list
        if (articles.isEmpty) {
          return SliverFillWidget(onRetry: _refreshNews);
        }

        // Success: show articles
        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => NewsTile(article: articles[index]),
            childCount: articles.length,
          ),
        );
      },
    );
  }
}
