import 'package:flutter/material.dart';
import 'package:netflix_app/core/init/theme/app_theme.dart';
import 'package:netflix_app/feature/coming_soon_page/view/coming_soon_view.dart';
import 'package:netflix_app/feature/downloads_page/downloads_page_view.dart';
import 'package:netflix_app/feature/search_page/view/search_page_view.dart';
import 'feature/home__page/view/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.instance.theme,
      debugShowCheckedModeBanner: false,
      home: const DownloadPage(),
    );
  }
}

