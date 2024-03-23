import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 50,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 30,
              height: 30,
              color: Colors.grey,
            ),
          );
        }
    );
  }
}
