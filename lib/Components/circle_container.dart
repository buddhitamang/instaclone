
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final String text;
  const CircleContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          
          ),
          Text(text),
        ],
      ),
    );
  }
}