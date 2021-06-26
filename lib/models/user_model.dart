import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String email;
  final String confirmationCode;
  final String id;
  final String password;
  final String name;
  final String profileImageUrl;
  final int noOfPosts;
  final int noOfFollowers;
  final int noOfFollowings;
  final String bio;
  final bool isVerified;
  final bool isBanned;

  UserModel(
    this.email,
    this.confirmationCode,
    this.id,
    this.password,
    this.name,
    this.profileImageUrl,
    this.noOfPosts,
    this.noOfFollowers,
    this.noOfFollowings,
    this.bio,
    this.isVerified,
    this.isBanned,
  );

  factory UserModel.fromDoc(DocumentSnapshot doc) {
    return UserModel(
      doc['email'],
      doc['confirmationCode'],
      doc['id'],
      doc['password'],
      doc['name'],
      doc['profileImageUrl'],
      doc['noOfPosts'],
      doc['noOfFollowers'],
      doc['noOfFollowings'],
      doc['bio'],
      doc['isVerified'],
      doc['isBanned'],
    );
  }
}
