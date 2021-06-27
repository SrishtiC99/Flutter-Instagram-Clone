import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String id;
  final String senderId;
  final String text;
  final String imageUrl;
  final String giphyUrl;
  final Timestamp timestamp;
  final bool isLiked;

  MessageModel(
    this.id,
    this.senderId,
    this.text,
    this.imageUrl,
    this.giphyUrl,
    this.timestamp,
    this.isLiked,
  );

  factory MessageModel.fromDoc(DocumentSnapshot doc) {
    return MessageModel(
      doc['id'],
      doc['senderId'],
      doc['text'],
      doc['imageUrl'],
      doc['giphyUrl'],
      doc['timestamp'],
      doc['isLiked'],
    );
  }
}
