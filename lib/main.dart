import 'package:blog_app/screens/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'storage/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kprimaryColor),
          useMaterial3: true,
          textTheme: const TextTheme(
              titleSmall: TextStyle(
                fontFamily: "Avenir",
                fontSize: 14,
                color: kprimaryColor,
                fontWeight: FontWeight.w400,
              ),
              titleMedium: TextStyle(
                fontFamily: "Avenir",
                fontSize: 18,
                color: ksecondaryTextColor,
                fontWeight: FontWeight.w400,
              ),
              titleLarge: TextStyle(
                fontFamily: "Avenir",
                fontSize: 20,
                color: kprimaryColor,
                fontWeight: FontWeight.w500,
              ),
              headlineSmall: TextStyle(
                fontFamily: "Avenir",
                fontSize: 20,
                color: kprimaryColor,
                fontWeight: FontWeight.w400,
              ),
              headlineMedium: TextStyle(
                fontFamily: "Avenir",
                fontSize: 14,
                color: kprimaryColor,
                fontWeight: FontWeight.w400,
              ))),
      home: MyHomePage(),
    );
  }
}
