import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyTabs extends StatefulWidget {
  @override
  MyPage createState() => MyPage();
}

class MyPage extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("My Page"),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            controller: controller,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                text: "Recent",
              ),
              Tab(
                text: "Nearby",
              ),
            ],
          ),
          // bottom: TabBar(
          //   tabs: <Widget>[Text("Bio"), Text("Recents")],
          // ),
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: CachedNetworkImageProvider(
                        "https://i.pinimg.com/originals/79/a9/d4/79a9d4632c95afd9d5bb07268a06bd51.jpg"))),
          ),
          ListView(
            children: <Widget>[
              Divider(
                height: 45,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: CachedNetworkImageProvider(
                          "https://www.beautycastnetwork.com/Images/SampleProfile3.png"),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sarah Connor",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              )
            ],
          )
        ]));
  }
}
