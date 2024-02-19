import 'package:blog_app/screens/MyHomePage.dart';
import 'package:blog_app/storage/images.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Story extends StatelessWidget {
  // final Story storyobject;
  // final bool
  // Story({super.key, required this.storyobject});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: GestureDetector(
          onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageUrlClass().imageUrl.length,
            itemBuilder: (context, index) => Stack(
              children: [
                SizedBox(
                  height: 75,
                  width: 70,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: DottedBorder(
                      color: Colors.red,
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(20),
                      padding: EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        child: Container(
                          height: 200,
                          width: 120,
                          child: Image.asset(
                            imageUrlClass().imageUrl[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(bottom: 0, left: 4, right: 1, child: Text("name"))
              ],
            ),
          )),
    );
  }
}
