import 'package:blog_app/screens/postScreen.dart';
import 'package:blog_app/screens/productDetailScreen.dart';
import 'package:blog_app/storage/images.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String imageurl;
  final String text;
  final String subtext;
  const Post(
      {super.key,
      required this.imageurl,
      required this.text,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => productDetailScreen(),
            )),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                color: Colors.deepPurple,
              )
            ],
          ),
          margin: const EdgeInsets.only(bottom: 15, left: 15, right: 15),

          //  height: MediaQuery.of(context).size.height * 0.2,
          //  width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Hero(
                //tag: 'imageB',
                // child:
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 100,
                      //   height: MediaQuery.of(context).size.height * 0.16,
                      child: Image.asset(
                        imageurl,
                        fit: BoxFit.cover,
                      ),
                      // ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          subtext,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "20k views",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.thumb_up_alt_rounded,
                              color: Colors.grey,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "12k likes",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
