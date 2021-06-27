import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/user_authentication_pages/login_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>
          LoginScreen()
      ), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Instagram Clone", style: TextStyle(
              fontSize: 60,
              color: Colors.black,
              fontFamily: 'Billabong'
            ),),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/instagram_logo.jpg',
            height: 60,
            width: 60,)
          ],
        ),
      ),
    );
  }
}