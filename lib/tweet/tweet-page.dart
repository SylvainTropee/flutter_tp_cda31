import 'package:flutter/material.dart';
import 'package:y/tweet/footer.dart';
import 'package:y/tweet/header.dart';
import 'package:y/tweet/tweet-card.dart';

class TweetPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String? email = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: Text("Y - Bienvenue $email"), backgroundColor: Colors.blue),
      body: Column(
        children: [Header(), Expanded(child: TweetCard()), Footer()],
      ),
    );
  }
}
