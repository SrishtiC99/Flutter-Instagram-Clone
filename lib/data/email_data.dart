import 'package:cloud_firestore/cloud_firestore.dart';

class EmailData{
  final String email;
  final String password;
  final String userId;

  EmailData(this.email, this.password, this.userId);

  factory EmailData.fromDoc(DocumentSnapshot doc){
    return EmailData(doc['email'], doc['password'], doc['userId'],);
  }
}