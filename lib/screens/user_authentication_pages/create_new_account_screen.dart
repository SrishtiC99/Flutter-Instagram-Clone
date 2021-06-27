import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/data/email_data.dart';
import 'package:instagram_clone/screens/user_authentication_pages/email_confirmation_screen.dart';
import 'package:instagram_clone/screens/user_authentication_pages/login_screen.dart';
import 'package:instagram_clone/services/auth_service.dart';
import 'package:instagram_clone/services/email_collection_service.dart';

class CreateNewAccountScreen extends StatefulWidget {
  @override
  _CreateNewAccountScreenState createState() => _CreateNewAccountScreenState();
}

class _CreateNewAccountScreenState extends State<CreateNewAccountScreen> {
  TextEditingController _emailController = TextEditingController();
  void _navigateToConfirmationScreen(){
    _submit();
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        EmailConfirmationScreen(email: _emailController.text)));
  }
  void _navigateToLogInScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        LoginScreen()));
  }
  _submit() async{
    if(await EmailCollectionService.checkForEmail(context, _emailController.text) == true){
      print("Email Already Exist");
    }
    else{
      print("Not working ");
      EmailCollectionService.addEmail(context, EmailData(_emailController.text, " ", " "));
    }
  }
  Widget _bottomWidget() {
    return Container(
      alignment: Alignment.center,
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            height: 2,
            color: Colors.black,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? "),
              InkWell(
                onTap: _navigateToLogInScreen,
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/instagram_profile.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24,),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: _navigateToConfirmationScreen,
                child: Container(
                  padding: EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _bottomWidget(),
                  )
              ),
            ],
          ),
        ),

      ),
    );
  }
}
