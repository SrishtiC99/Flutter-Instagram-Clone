import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/screens/user_authentication_pages/sign_up_with_username_screen.dart';

class EmailConfirmationScreen extends StatefulWidget{
  final String email;

  const EmailConfirmationScreen({Key? key, required this.email}) : super(key: key);
  @override
  _EmailConfirmationScreenState createState() => _EmailConfirmationScreenState(email);
}

class _EmailConfirmationScreenState extends State<EmailConfirmationScreen> {
  final String email;
  _EmailConfirmationScreenState(this.email);
  TextEditingController _confirmationCodeController = TextEditingController();
  void _navigateToSignUpWithUserNameScreen(){
    Navigator.push(context, MaterialPageRoute(builder:  (context) =>
        SignUpWithUserNameScreen(email: email,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text("ENTER CONFIRMATION CODE", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Text("Enter the Confirmation code we sent to"),
            SizedBox(
              height: 6,
            ),
            Text("$email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24,),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _confirmationCodeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Code",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: _navigateToSignUpWithUserNameScreen,
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