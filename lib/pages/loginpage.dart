import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'discover.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([]);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        // Center is a layout widget. It takes a single child and positions it

        // in the middle of the parent.

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
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Discover()),
                    );
                  },
                  child: new Text("Google"),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Discover()),
                    );
                  },
                  child: new Text("Facebook"),
                ),
                RaisedButton(
                  textColor: Colors.black,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Discover()),
                    );
                  },
                  child: new Text("Sign in using a GuidMe account"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Discover()),
                    );
                  },
                ),
              ],
            )))

        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).

        );
  }
}
