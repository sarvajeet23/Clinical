import 'package:flutter/material.dart';

class App_TabBar extends StatelessWidget {
  final Icon icon;
  final Text title;
  final VoidCallback onTab;
  const App_TabBar({
    super.key,
    required this.icon,
    required this.title,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            title,
          ],
        ),
      ),
    );
  }
}
