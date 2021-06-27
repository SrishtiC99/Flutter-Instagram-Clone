import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/story_pages/users_stories_page.dart';

class SingleStoryItemPage extends StatefulWidget{
  @override
  _SingleStoryItemPageState createState() => _SingleStoryItemPageState();
}

class _SingleStoryItemPageState extends State<SingleStoryItemPage> {
  void _navigateToUsersStoriesPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
        UsersStoriesPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            _navigateToUsersStoriesPage();
          },
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/user_placeholder.jpg"),
              ),),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text("__srishti03__"),
      ],
    );
  }
}