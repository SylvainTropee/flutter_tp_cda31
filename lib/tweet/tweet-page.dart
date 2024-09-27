import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:y/tweet/footer.dart';
import 'package:y/tweet/header.dart';
import 'package:y/tweet/tweet-card.dart';
import 'dart:convert';

import '../model/tweet.dart';

class TweetPage extends StatelessWidget {
  List<Tweet> tweets = [];

  @override
  Widget build(BuildContext context) {
    String? email = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
          title: Text("Y - Bienvenue $email"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Header(),
          Expanded(
              child: FutureBuilder<Response>(
                  future: get(Uri.parse(
                      "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json")),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data?.body != null) {
                      var body = snapshot.data!.body;
                      var json = jsonDecode(body);

                      if (json is List) {
                        tweets = List<Tweet>.from(
                            json.map((jsonTweet) => Tweet.fromJson(jsonTweet)));
                      }
                      return ListView.builder(
                          itemCount: tweets.length,
                          itemBuilder: (BuildContext context, int index) {
                            print(tweets[index]);
                            return TweetCard(tweets[index]);
                          });
                    }

                    return CircularProgressIndicator();
                  })),
          Footer()
        ],
      ),
    );
  }
}
