import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: .min,
          children: [
            const Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: .bold,
              ),
            ),
            Container(
              padding: const .symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const CategoriesListView(),

            const Expanded(child: NewsListView()),
          ],
        ),
      ),
    );
  }
}
