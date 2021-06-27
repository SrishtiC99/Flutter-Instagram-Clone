import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/models/user_model.dart';

class ChatModel {
  final String profileUrl;
  final String id;
  final String recentMessage;
  final String recentSender;
  final List<dynamic> memberIds;
  final List<UserModel> memberInfo;
  final dynamic readStatus;

  ChatModel(
    this.profileUrl,
    this.id,
    this.recentMessage,
    this.recentSender,
    this.memberIds,
    this.memberInfo,
    this.readStatus,
  );

  factory ChatModel.fromDoc(DocumentSnapshot doc) {
    return ChatModel(
      doc['profileUrl'],
      doc['id'],
      doc['recentMessage'],
      doc['recentSender'],
      doc['memberIds'],
      doc['memberInfo'],
      doc['readStatus'],
    );
  }
}
