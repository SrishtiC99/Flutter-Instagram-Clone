import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/direct_message_pages/single_chat_item.dart';


class ChatPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Flexible(
         fit: FlexFit.loose,
         child: ListView.builder(
           shrinkWrap: true,
           itemCount: 10,
           //itemExtent: 100.0,
           itemBuilder: (BuildContext context, int index) {
             return SingleChatItem();
           },
         ),
       )
    ]
   );
  }

}