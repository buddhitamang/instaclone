import 'package:flutter/material.dart';
import 'package:instaclone/ProfilePages/my_post.dart';
import 'package:instaclone/ProfilePages/my_tagged.dart';
import 'package:instaclone/ProfilePages/my_videos.dart';

class ProfilePage extends StatelessWidget {
  
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.lock_outline_rounded),
                    Text('buddhi tamang'),
                    Icon(Icons.arrow_downward),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '@',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.add_box_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.sort)
                  ],
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                          ),
                          Positioned(
                            left: 55,
                            top: 55,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.blue),
                              child: Center(
                                  child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                            ),
                          )
                        ]),
                        Text('buddhi tamang')
                      ],
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      children: [
                        Text('1'),
                        Text(
                          'post',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('32'),
                        Text(
                          'followers',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text('23'),
                        Text(
                          'following',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      
                      backgroundColor: Colors.black12, // Background color
                      padding: EdgeInsets.symmetric(horizontal: 50,), // Padding
                    ),
                    onPressed: () {},
                    child: Text('Edit profile'),
                  ),
                  SizedBox(width: 5,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12, // Background color
                      padding: EdgeInsets.symmetric(horizontal: 50,), // Padding
                    ),
                    onPressed: () {},
                    child: Text('Share profile'),
                  ),
                ],
              ),
              Container(
                height: 50,
                // color: Colors.blue,
                child: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_sharp),

                    ),
                    Tab(
                      icon: Icon(Icons.ondemand_video_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.perm_contact_cal_outlined),
                    )
                  ],

                ),

              ),
              Expanded(
                child: TabBarView(children: [
                  MyPost(),
                  MyVideos(),
                  MyTagged()
                
                
                ]),
              )
            ],
          )),
    );
  }
}
