import 'package:flutter/material.dart';
import 'package:flutter_getx_blog/page/blog_detail.dart';
import 'package:flutter_getx_blog/page/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter App Blog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          elevation: 0.0
        ),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/blog-detail', page: () => const BlogDetail())
      ],
    );
  }
}
