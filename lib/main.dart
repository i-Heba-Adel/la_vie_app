import 'package:flutter/material.dart';
import 'package:la_vie/screens/blog/blogs_screen.dart';
import 'package:la_vie/screens/home/home_screen.dart';
import 'package:la_vie/screens/post/create_post.dart';
import 'package:la_vie/screens/splash-screen/splash_screen.dart';
import 'dataScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
