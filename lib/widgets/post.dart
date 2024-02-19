import 'package:blog_app/screens/postScreen.dart';
import 'package:blog_app/storage/images.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostScreen(),
                )),
            child: Hero(
                tag: 'imageB',
                child: Image.asset(
                  imageUrlClass().imageUrl.last,
                  width: 100,
                  height: 200,
                )),
          )
        ],
      ),
    );
  }
}
