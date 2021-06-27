import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_backspace,
                      ),
                    ),
                    onTap: (){Navigator.pop(context);},
                  ),
                  SizedBox(width: 15,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/user_placeholder.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Xyzzzz",
                            style: TextStyle(
                                fontSize: 16, color: CupertinoColors.black),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "recent activity",
                            style: TextStyle(color: Colors.black45),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.call, size: 30,),
                  SizedBox(width: 10,),
                  Icon(Icons.videocam_outlined, size: 30,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
