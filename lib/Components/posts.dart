import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String text;
  const Posts({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),
            ),
            Text(text,style: TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 5,),
        Container(
          height: 350,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.chat_bubble_outline),
                  Icon(Icons.message_sharp)
                ],
            ),
            Icon(Icons.bookmark)
          
          ],
        )
      ],
    );
  }
}
