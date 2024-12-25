import 'package:flutter/material.dart';

class CustomDetailsText extends StatelessWidget {
  const CustomDetailsText({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
    );
  }
}
