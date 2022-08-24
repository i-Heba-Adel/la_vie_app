import 'package:flutter/material.dart';

import '../../shared/style/color.dart';

class OneBlogScreen extends StatelessWidget {

  String imagePath = '';
  String nameOfBlog = '';
  String descriptionOfBlog = '';

  OneBlogScreen({required this.imagePath , required this.nameOfBlog , required this.descriptionOfBlog});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagePath,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    nameOfBlog,
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    descriptionOfBlog,
                    style: TextStyle(
                      height: 1.8,
                      color: gray6fColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
