import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/tweet.dart';

class TweetCard extends StatelessWidget {
  Tweet tweet;

  TweetCard(this.tweet);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 125,
              child: Image.network(tweet.profile!, fit: BoxFit.contain),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tweet.author!, style: TextStyle(fontSize: 18)),
                      Text(
                        DateFormat("yyyy-MM-dd").format(tweet.michelDate!),
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: Text(tweet.message!),
                )
              ],
            ),
          )
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 12),
          child: Row(
            children: [
              TweetButton(iconPath: "/images/reply.png"),
              TweetButton(iconPath: "/images/retweet.png"),
              TweetButton(iconPath: "/images/favorite.png"),
            ],
          ),
        ),
      ],
    );
  }
}

class TweetButton extends StatelessWidget {
  String? label;
  String? iconPath;

  TweetButton({this.label, this.iconPath});

  Widget getButton() {
    if (iconPath != null) {
      return IconButton(onPressed: () {}, icon: Image.asset(iconPath!));
    }
    return Text(label!, style: TextStyle(color: Colors.white, fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(child: getButton());
  }
}
