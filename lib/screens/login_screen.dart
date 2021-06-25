import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/create_new_account_screen.dart';
import 'package:instagram_clone/screens/home_page.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import 'package:instagram_clone/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _navigateToSignUpScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        SignUpScreen()));
  }
  void _navigateToHomeScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Instagram",
                style: TextStyle(
                    fontSize: 50, color: Colors.black, fontFamily: 'Billabong'),
              ),
              SizedBox(
                height: 120,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: TextField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Phone number, username or email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  _navigateToHomeScreen();
                },
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "OR",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login with Facebook",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  InkWell(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      _navigateToSignUpScreen();
                    },
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
