import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/images/user_placeholder.jpg"),
          ),
        ),
      ),
      title: Text("Xyzzzz", style: TextStyle(fontSize: 16, color: CupertinoColors.black),),
      subtitle: Text("recent activity", style: TextStyle(color: Colors.black45),),
      trailing: Icon(Icons.photo_camera_outlined,size: 30,),
    );
  }
}
