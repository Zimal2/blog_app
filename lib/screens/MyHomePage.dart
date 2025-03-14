import 'package:blog_app/storage/images.dart';
import 'package:blog_app/widgets/carosoul.dart';
import 'package:flutter/material.dart';

import '../widgets/Story.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi! Zimal",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 35,
                          width: 30,
                          child: Image.asset(
                            "lib/assets/img/icons/notification.png",
                            fit: BoxFit.cover,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "What you want to explore",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 20),
              Story(),
              Carosoul(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("More"),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) => Post(
                  imageurl: imageUrlClass().imageUrl[index],
                  text: imageUrlClass().textUrl[index],
                  subtext: imageUrlClass().subtextUrl[index],
                ),
                itemCount: imageUrlClass().imageUrl.length,
              )
              //Post(),
            ],
          ),
        ),
      ),
    );
  }
}
