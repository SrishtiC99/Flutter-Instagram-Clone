import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  TextEditingController _messageController = TextEditingController();
  bool _isTyping = false;

  Widget _textFieldIconWidget() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(100),
      ),
      child: _isTyping
          ? Icon(
              Icons.search_sharp,
              color: Colors.white,
              size: 30,
            )
          : Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 30,
            ),
    );
  }

  Widget _textFieldRowWidget() {
    return _isTyping
        ? InkWell(
          onTap: (){
            setState(() {
              _isTyping = false;
              _messageController.clear();
            });
          },
          child: Text(
              "Send",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
        )
        : Row(
            children: [
              Icon(
                Icons.mic_none_rounded,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.image_outlined,
                size: 30,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
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
                  SizedBox(
                    width: 12,
                  ),
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
                  Icon(
                    Icons.call,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.videocam_outlined,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    _textFieldIconWidget(),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration:
                            InputDecoration.collapsed(hintText: 'Message...'),
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        onTap: () {
                          setState(() {
                            _isTyping = true;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    _textFieldRowWidget(),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
