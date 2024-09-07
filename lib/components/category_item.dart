import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  String text;
  Color color;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 64),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 16),
          height: 65,
          width: 275,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
