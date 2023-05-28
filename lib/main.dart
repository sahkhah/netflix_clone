import 'package:flutter/material.dart';
import 'package:netflix_app/core/init/theme/app_theme.dart';
import 'package:netflix_app/feature/tabbar/view/app_tabbar_view.dart';

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
      home: AppTabBar(),
    );
  }
}
