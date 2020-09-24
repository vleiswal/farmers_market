import 'package:flutter/material.dart';

class ApplicationUser {
  final String userId;
  final String email;

  ApplicationUser({@required this.userId, @required this.email});

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'email': email,
    };
  }

  ApplicationUser.fromFirestore(Map<String, dynamic> firestore)
      : userId = firestore['userId'],
        email = firestore['email'];
}
