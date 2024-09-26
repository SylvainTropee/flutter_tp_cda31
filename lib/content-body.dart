import 'package:flutter/material.dart';
import 'package:y/auth/login-form.dart';
import 'package:y/tweet/tweet-card.dart';

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