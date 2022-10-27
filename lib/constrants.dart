import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton(
      {super.key,
      required this.title,
      this.color = Colors.grey,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
