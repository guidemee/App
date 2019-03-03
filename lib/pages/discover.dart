import 'package:flutter/material.dart';
import './mypage.dart';
import './placeholderpage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

TextStyle drawerTextStyle() {
  return TextStyle(fontSize: 20, color: Colors.white70);
}

BoxDecoration getDrawerBackdrop() {
  return BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: CachedNetworkImageProvider(
              "https://wallpapercave.com/wp/MYcMC6i.jpg")));
}

CachedNetworkImageProvider getProfilePicture() {
  return CachedNetworkImageProvider(
      "https://www.beautycastnetwork.com/Images/SampleProfile3.png");
}

Container getListView(BuildContext context) {
  return Container(
      color: Colors.blueAccent,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Sarah Connor"),
            accountEmail: Text("sarah@connor.com"),
            decoration: getDrawerBackdrop(),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundImage: getProfilePicture(),
              ),
              onTap: () {
                // Remove the app drawer
                Navigator.of(context).pop();

                //Do page Transition
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyTabs()),
                );
              },
            ),
          ),
          ListTile(
            title: Text(
              "Discover",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Discover")),
              );
            },
          ),
          ListTile(
            title: Text(
              "Trending",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Trending")),
              );
            },
          ),
          ListTile(
            title: Text(
              "Events",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Events")),
              );
            },
          ),
          ListTile(
            title: Text(
              "Profile",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Profile")),
              );
            },
          ),
          ListTile(
            title: Text(
              "History",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("History")),
              );
            },
          ),
          ListTile(
            title: Text(
              "Settings",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Settings")),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              "Home",
              style: drawerTextStyle(),
            ),
            onTap: () {
              // Remove the app drawer
              Navigator.of(context).pop();

              //Do page Transition
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => PlaceholderPage("Home")),
              );
            },
          ),
        ],
      ));
}

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(child: getListView(context)),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: CachedNetworkImageProvider(
                    "https://i.pinimg.com/originals/79/a9/d4/79a9d4632c95afd9d5bb07268a06bd51.jpg"))),
      ),
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
    );
  }
}
