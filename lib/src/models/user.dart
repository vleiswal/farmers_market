import 'package:flutter/material.dart';

class User {
  final String userId;
  final String email;

  User({@required this.userId, @required this.email});

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'email': email,
    };
  }

  User.fromFirestore(Map<String, dynamic> firestore)
      : userId = firestore['userId'],
        email = firestore['email'];
}
