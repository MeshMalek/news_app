import 'package:flutter/material.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),

      itemCount: 8,
      itemBuilder: (BuildContext context, int index) =>
          Padding(padding: const EdgeInsets.all(8.0), child: NewsTile()),
    );
  }
}
