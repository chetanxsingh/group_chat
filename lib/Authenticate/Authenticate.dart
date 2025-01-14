import 'package:flutter/material.dart';
import 'package:group_chat/Authenticate/LoginScreen.dart';
import 'package:group_chat/Screens/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return HomeScreen();
    } else {
      return LoginScreen();
    }
  }
}
