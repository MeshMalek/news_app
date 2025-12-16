import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 180,
        width: 220,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.imagePath),
            fit: BoxFit.cover,
          ),
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
