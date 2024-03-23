import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search here'
            ),
          ),
          Expanded(
            child: GridView.builder(
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
                }),
          )
        ],
      ),
    ));
  }
}
