
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      height: 100,
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          shape: BoxShape.rectangle),
      child: Center(
        child: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),),
      ),
    );
  }
}