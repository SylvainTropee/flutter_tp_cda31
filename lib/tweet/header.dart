import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  String? label;
  String? iconPath;

  HeaderButton({this.label, this.iconPath});

  Widget getButton(){
    if(iconPath != null){
      return IconButton(onPressed: () {}, icon: Image.asset(iconPath!));
    }
    return Text(label!, style: TextStyle(color: Colors.white, fontSize: 18));
  }

  @override
  Widget build(BuildContext context) {
    return getButton();
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF58B0F0),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HeaderButton(iconPath: "/images/pencil.png"),
            HeaderButton( label: "Accueil"),
            HeaderButton(iconPath: "/images/search.png"),
          ],
        ),
      ),
    );
  }
}


