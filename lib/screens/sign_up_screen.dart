import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/create_new_account_screen.dart';

import 'login_screen.dart';

class SignUpScreen extends StatefulWidget{
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void _navigateToLogInScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        LoginScreen()));
  }
  void _navigateToCreateAccountScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        CreateNewAccountScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram Clone",
              style: TextStyle(
                  fontSize: 40, color: Colors.black, fontFamily: 'Billabong'),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: _navigateToCreateAccountScreen,
              child: Container(
                padding: EdgeInsets.only(
                    left: 70, right: 70, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Text(
                  "Create New Account",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: _navigateToLogInScreen,
              child: Text(
                "Log in",
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}