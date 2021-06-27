import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/post_pages/single_post_item_page.dart';
import 'package:instagram_clone/screens/story_pages/single_story_item_page.dart';
import 'package:instagram_clone/screens/story_pages/upload_story_page.dart';

import 'direct_message_pages/direct_chat_page.dart';


class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navigateToDirectChat(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        DirectChatPage()));
  }
  void _navigateToUploadStoryPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        UploadStoryPage()));
  }
  Widget _storyWidget() {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemExtent: 100.0,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if(index == 0)
             return _myStoryWidget();
          return SingleStoryItemPage();
        },
      ),
    );
  }

  Widget _myStoryWidget(){
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/user_placeholder.jpg"),
                    ),),
                ),
              ),
              Positioned(
                right: 5,
                bottom: 5,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
        Text("Your Story"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      InkWell(
                        child: Icon(
                          Icons.add_box_outlined,
                          size: 30,
                        ),
                        onTap: (){
                          _navigateToUploadStoryPage();
                        },
                      ),
                      Expanded(
                        child: Text(
                          "Instagram",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.black,
                              fontFamily: 'Billabong'),
                        ),
                      ),
                      InkWell(
                        onTap: _navigateToDirectChat,
                        child: Image.asset("assets/images/direct_chat.png",
                        height: 40,
                        width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(child: _storyWidget(),),
                  ],
                ),
                SinglePostItemPage(),
                SinglePostItemPage(),
                SinglePostItemPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
