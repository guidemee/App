import 'package:flutter/material.dart';
import './mypage.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GuidmeLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                        "https://images.unsplash.com/photo-1489549132488-d00b7eee80f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"))),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "GuidMe",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontStyle: FontStyle.italic,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                ),
                Divider(
                  height: 60,
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                ),
                Divider(
                  height: 100,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(20.0),
                      hintText: "John92",
                      hintStyle: TextStyle(
                          color: Colors.orange, fontStyle: FontStyle.italic),
                      labelText: "Username:",
                      labelStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.orangeAccent)),
                ),
                Divider(
                  height: 45,
                ),
                TextField(
                  onTap: () {},
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                  decoration: InputDecoration(
                      hintText: "********",
                      hintStyle: TextStyle(
                          color: Colors.orange, fontStyle: FontStyle.italic),
                      labelText: "Password:",
                      labelStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          color: Colors.orange)),
                ),
                Divider(
                  height: 100,
                ),
              ],
            ))));
  }
}
