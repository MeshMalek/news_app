import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewApp',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // Customize dark theme colors here, e.g.,
        scaffoldBackgroundColor: const Color(0xF21B1B1B),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
