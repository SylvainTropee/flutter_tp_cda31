import 'package:flutter/material.dart';
import 'package:y/content-body.dart';
import 'package:y/footer.dart';
import 'package:y/header.dart';

void main() {
  runApp(const YApp());
}

class YApp extends StatelessWidget {
  const YApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Y"),
        ),
        body: Column(
          children: [
            Header(),
            Expanded(child: ContentBody()),
            Footer()
          ],
        ),
      ),
    );

  }

}


