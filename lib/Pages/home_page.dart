import 'package:flutter/material.dart';

import '../Components/circle_container.dart';
import '../Components/posts.dart';

class HomePage extends StatelessWidget {
  final List people = [
    'crsitinao',
    'messi',
    'saurez',
    'benxema',
    'ozil',
    'moje',
    'laude'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.message)
                ],
              )
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Container(
              // color: Colors.red,
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return CircleContainer(text: people[index]);
                  }),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return Posts(text: people[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}


