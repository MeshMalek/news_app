import 'package:flutter/material.dart';
import 'package:news_app/theme/dark_theme.dart';
import 'package:news_app/theme/light_theme.dart';
import 'views/home_page.dart';

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
      home: const HomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
