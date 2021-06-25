import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePostItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/user_placeholder.jpg"),
                    fit: BoxFit.fill
                  ),),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text("__srishti03__",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 12, right: 12),
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage("assets/images/post_placeholder.jpg"),
              fit: BoxFit.contain
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Row(
            children: const <Widget>[
              Icon(
                Icons.favorite_border_outlined,
                size: 30.0,
              ),
              SizedBox(width: 8,),
              Icon(
                Icons.add_box_outlined,
                size: 30.0,
              ),
              SizedBox(width: 8,),
              Icon(
                Icons.comment_outlined,
                size: 30.0,
              ),
              Expanded(child: SizedBox()),
              Icon(
                Icons.bookmark_border_outlined,
                size: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Row(
            children: [
            Text("__srishti03__",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),),
              SizedBox(width: 8,),
              Text("Hiii there..."),
            ],
          ),
        ),
      ],
    );
  }

}