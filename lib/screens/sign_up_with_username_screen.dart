import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen.dart';

class SignUpWithUserNameScreen extends StatefulWidget{
  @override
  _SignUpWithUserNameScreenState createState() => _SignUpWithUserNameScreenState();
}

class _SignUpWithUserNameScreenState extends State<SignUpWithUserNameScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  void _navigateToHomeScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                  fontSize: 80, color: Colors.black, fontFamily: 'Billabong'),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24,),
              child: TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter a user name",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24,),
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter a password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24,),
              child: TextField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Confirm Password",
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: _navigateToHomeScreen,
              child: Container(
                padding: EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}