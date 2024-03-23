import 'package:flutter/material.dart';
import 'package:instaclone/Components/circle_container.dart';
import 'package:instaclone/Components/posts.dart';
import 'package:instaclone/Pages/home_page.dart';
import 'package:instaclone/Pages/post_page.dart';
import 'package:instaclone/Pages/profile_page.dart';
import 'package:instaclone/Pages/search_page.dart';
import 'package:instaclone/Pages/video_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  int _selectedIndex=0;

  void navigatePage(int index){
    setState(() {
      _selectedIndex=index;
    });

  }
  final List<Widget> pages=[

    HomePage(),
    SearchPage(),
    PostPage(),
    VideoPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: navigatePage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add),label: 'post'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person_2),label: 'profile'),


        ],
      ),
      body: pages[_selectedIndex],
    );

  }
}
