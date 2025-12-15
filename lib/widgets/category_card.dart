import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sports.avif'),
            fit: BoxFit.cover,
          ),
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Sports',
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
