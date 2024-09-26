import 'package:flutter/material.dart';
import 'package:y/login-form.dart';
import 'package:y/tweet-card.dart';

class ContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginForm(),
        TweetCard()
      ]

    );
  }
}