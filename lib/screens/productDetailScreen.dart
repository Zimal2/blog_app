import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class productDetailScreen extends StatelessWidget {
  const productDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Hire"),
          icon: const Icon(Icons.call)),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                leadingWidth: 100,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  iconSize: 30,
                  icon: const Icon(CupertinoIcons.chevron_back),
                ),
                actions: [Icon(Icons.more_outlined)],
              ),
              SliverList(delegate: SliverChildListDelegate.fixed(
[
  
]
              ))
            ],
          )
        ],
      ),
    );
  }
}
