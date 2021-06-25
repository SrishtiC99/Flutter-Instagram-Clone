import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DirectChatPage extends StatefulWidget{
  @override
  _DirectChatPageState createState() => _DirectChatPageState();
}

class _DirectChatPageState extends State<DirectChatPage> {
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
                  Icon(
                    Icons.arrow_back_outlined,
                    size: 40,
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}