import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262729),
      appBar: AppBar(
        backgroundColor: Color(0xff262729),
        centerTitle: true,
        title: Row(
          mainAxisSize: .min,
          children: [
            const Text(
              'News',
              style: TextStyle(
                color: Colors.white,
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
                'Hub',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: .bold,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(children: [const CategoriesListView(), const NewsTile()]),
    );
  }
}
