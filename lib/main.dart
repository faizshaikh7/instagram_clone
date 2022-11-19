import 'package:flutter/material.dart';
import 'package:instagram_clone/responsive/app_layout.dart';
import 'package:instagram_clone/responsive/web_layout.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/responsive/responsive_layout.dart';
import 'package:instagram_clone/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
          appLayout: AppLayout(), webLayout: WebLayout()),
    );
  }
}
