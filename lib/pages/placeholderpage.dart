import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import './mypage.dart';

class PlaceholderPage extends StatelessWidget {
  String name;
  PlaceholderPage(final String n) {
    name = n;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: CachedNetworkImageProvider(
                    "https://i.pinimg.com/originals/79/a9/d4/79a9d4632c95afd9d5bb07268a06bd51.jpg"))),
      ),
    );
  }
}
