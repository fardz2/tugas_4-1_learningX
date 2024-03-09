import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.icon,
      required this.text,
      this.coloractive = Colors.white,
      this.coloractivetext = Colors.black});
  final String icon;
  final String text;
  final Color coloractive;
  final Color coloractivetext;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 108,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.red),
          color: coloractive),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon, width: 25, height: 25),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: coloractivetext),
          )
        ],
      ),
    );
  }
}
