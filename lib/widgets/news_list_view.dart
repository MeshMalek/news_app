import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/skeleton_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'news_tile.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    isLoading = true;
    setState(() {});
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // When loading, show skeleton widgets without SliverSkeletonizer
    if (isLoading) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => const SkeletonizerWidget(),
          childCount: 5,
        ),
      );
    }

    // When loaded, show real content with SliverSkeletonizer (disabled)
    return SliverSkeletonizer(
      enabled: false, // Disabled since we have real content
      effect: ShimmerEffect(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        duration: const Duration(milliseconds: 1000),
      ),
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => NewsTile(article: articles[index]),
          childCount: articles.length,
        ),
      ),
    );
  }
}
