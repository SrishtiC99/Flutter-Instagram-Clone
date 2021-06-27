import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/direct_messages/chat_page.dart';

class DirectChatPage extends StatefulWidget {
  @override
  _DirectChatPageState createState() => _DirectChatPageState();
}

class _DirectChatPageState extends State<DirectChatPage> {
  bool chats = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.keyboard_backspace,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "__srishti03__",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        size: 30,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.videocam_outlined,
                    size: 40,
                  ),
                ],
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){},
                        highlightColor: Colors.grey[500],
                        splashColor: Colors.grey[500],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Chats", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                          textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            chats = false;
                          });
                        },
                        highlightColor: Colors.grey[500],
                        splashColor: Colors.grey[500],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Rooms",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),
                            textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: ChatPage(),),
            ],
          ),
        ),
      ),
    );
  }
}
