import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: .min,
          children: [
            const Text(
              'News ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: .bold,
              ),
            ),
            Container(
              padding: const .symmetric(horizontal: 8, vertical: 4),
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
      body: Column(),
    );
  }
}
