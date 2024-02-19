import 'package:blog_app/storage/images.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carosoul extends StatelessWidget {
  Carosoul({super.key});

  final imageUrlClass _imageUrlClass = imageUrlClass(); // Initialize once

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: CarouselSlider.builder(
        itemCount: _imageUrlClass.imageUrl.length,
        itemBuilder: (context, index, realIndex) => Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  _imageUrlClass.imageUrl[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                right: 10,
                child: Text(
                  imageUrlClass().textUrl[index].toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                ))
          ],
        ),
        options: CarouselOptions(
          aspectRatio: 1.2,
          autoPlay: true,
          enlargeCenterPage: true,
          initialPage: 0,
          viewportFraction: 0.8,
          reverse: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
