import 'package:flutter/material.dart';
import 'package:y/auth/login-page.dart';
import 'package:y/tweet/tweet-page.dart';

void main() {
  runApp(const YApp());
}

class YApp extends StatelessWidget {
  const YApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/tweet-list": (context) => TweetPage()
      },
    );
  }
}
