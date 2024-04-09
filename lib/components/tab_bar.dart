import 'package:flutter/material.dart';
import 'package:test8/structures/tab_bar_structure.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: App_TabBar(
              icon: const Icon(Icons.man_2_outlined),
              onTab: () {},
              title: const Text("BMI"),
            ),
          ),
          App_TabBar(
            icon: const Icon(Icons.bloodtype_outlined),
            onTab: () {},
            title: const Text("Blood"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: App_TabBar(
              icon: const Icon(Icons.vibration),
              onTab: () {},
              title: const Text("Other"),
            ),
          ),
        ],
      ),
    );
  }
}
