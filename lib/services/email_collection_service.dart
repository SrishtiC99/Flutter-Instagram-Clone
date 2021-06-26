import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/data/email_data.dart';

class EmailCollectionService{
  static final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  static final emailsRef = _fireStore.collection('/emails');

  static Future<bool> checkForEmail(BuildContext context, String email) async {
    emailsRef.doc(email)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
          print("hiiiiiiiiiiiiiiii");
        if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        return true;
        } else {
        print('Document does not exist on the database');
      }
    });
    return false;
  }
  static Future<void> addEmail(BuildContext context, EmailData email)async {
    emailsRef.doc(email.email).set({
      'email': email.email,
      'password': email.password,
      'userId': email.userId
    });
  }
}