import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(imagePath: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
      imagePath: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(imagePath: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(imagePath: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(imagePath: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(
      imagePath: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(imagePath: 'assets/general.avif', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
