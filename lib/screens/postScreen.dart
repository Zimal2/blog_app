import 'package:blog_app/storage/images.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Hero(
              tag: 'imageB',
              child: Image.asset(
                imageUrlClass().imageUrl.last,
              ))
        ],
      )),
    );
  }
}
