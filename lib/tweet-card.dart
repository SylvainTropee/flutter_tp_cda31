import 'package:flutter/material.dart';

class TweetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SizedBox(
              width: 125,
              child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTK2nG24AYDm6FOEC7jIfgubO96GbRso2Xshu1f8abSYQ&s",
                  fit: BoxFit.contain),
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LaCrevette@Chocolate",
                          style: TextStyle(fontSize: 18)),
                      Text(
                        "50s",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
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
