
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/data/user_data.dart';
import 'package:instagram_clone/models/user_model.dart';
import 'package:provider/provider.dart';

class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _fireStore = FirebaseFirestore.instance;
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static final usersRef = _fireStore.collection('/users');

  static Future<void> signUpUser(
    BuildContext context,
    String name,
    String email,
    String password,
  ) async {
    try {
      UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? signedInUser = authResult.user;
      if (signedInUser != null) {
        String? token = await _messaging.getToken();
        _fireStore.collection('/users').doc(signedInUser.uid).set({
          'email': email,
          'confirmationCode': token,
          'id': "",
          'password': password,
          'name': name,
          'profileImageUrl': "",
          'noOfPosts': 0,
          'noOfFollowers': 0,
          'noOfFollowings': 0,
          'bio': "",
          'isVerified': false,
          'isBanned': false,
        }).then((value) => null);
      }
      Provider.of<UserData>(context, listen: false).userId = signedInUser!.uid;
      Navigator.pop(context);
    } on PlatformException catch (err) {
      throw (err);
    }
  }
  static Future<void> signUp(
      BuildContext context, String email, String password) async {
    try {
        UserCredential authResult = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? signedInUser = authResult.user;
    } on PlatformException catch (err) {
      throw (err);
    }
  }
  static Future<void> loginUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on PlatformException catch (err) {
      throw (err);
    }
  }
  static Future<void> removeToken() async {
    final currentUser = _auth.currentUser;
    await _fireStore.collection('/users').doc(currentUser!.uid).set({'token': ''}, SetOptions(merge: true));
  }

  static Future<void> updateToken() async {
    final currentUser = _auth.currentUser;
    final token = await _messaging.getToken();
    final userDoc = await usersRef.doc(currentUser!.uid).get();
    if (userDoc.exists) {
      UserModel user = UserModel.fromDoc(userDoc);
      if (token != user.confirmationCode) {
        usersRef
            .doc(currentUser.uid)
            .set({'token': token}, SetOptions(merge: true));
      }
    }
  }

  static Future<void> updateTokenWithUser(User user) async {
    final currentUser = _auth.currentUser;
    final token = await _messaging.getToken();
    final userDoc = await usersRef.doc(currentUser!.uid).get();
    UserModel user = UserModel.fromDoc(userDoc);
    if (token != user.confirmationCode) {
      await usersRef.doc(user.id).update({'token': token});
    }
  }

  static Future<void> logout() async {
    await removeToken();
    Future.wait([
      _auth.signOut(),
    ]);
  }
}
