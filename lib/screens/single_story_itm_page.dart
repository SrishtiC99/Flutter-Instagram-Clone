import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleStoryItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/user_placeholder.jpg"),
            ),),
        ),
        SizedBox(
          height: 5,
        ),
        Text("__srishti03__"),
      ],
    );
    /*return Container(
      height: 55,
      width: 55,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Image.asset("assets/images/user_placeholder.jpg"),

      ),
    );
    */
  }

}