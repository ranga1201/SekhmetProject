import 'package:flutter/material.dart';
import 'package:music_player/music_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart';
import './musicList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'At Home',
        home: Builder(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: new Text(
                      "Greetings!",
                    ),
                  ),
                  body: Container(
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment(0.0, -0.95),
                            child: Text(
                              ("While you are at home, here are your tasks!"),
                            )),
                        Align(
                            alignment: Alignment(-1.0, 0.0),
                            child: ListView(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(10.0),
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('Buy groceries'),
                                  ],
                                ),
                              ],
                            )),
                        Align(
                          alignment: Alignment(0.87, 0.87),
                          child: ButtonBar(
                            mainAxisSize: MainAxisSize.max,
                            alignment: MainAxisAlignment.spaceEvenly,
                            buttonHeight: 80,
                            buttonMinWidth: 100,
                            children: <Widget>[
                              RaisedButton.icon(
                                onPressed: () {
                                  pushSaved(context);
                                },
                                icon: Icon(Icons.location_city),
                                label: Text('Go Out'),
                                color: Colors.blue[400],
                              ),
                              RaisedButton.icon(
                                onPressed: () {
                                  pushSaved1(context);
                                },
                                icon: Icon(Icons.music_note),
                                label: Text('Refreshment'),
                                color: Colors.blue[800],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )));
  }

  void pushSaved(BuildContext context) {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new Scaffold(
            appBar: new AppBar(
              title: new Text(
                "Go Out",
              ),
            ),
            body: Stack(children: [
              Align(
                  alignment: Alignment(0.0, -0.95),
                  child: Text(
                    ("Nice to see you up and about! "),
                  )),
              Align(
                alignment: Alignment(0.87, 0.87),
                child: ButtonBar(
                  mainAxisSize: MainAxisSize.max,
                  alignment: MainAxisAlignment.spaceEvenly,
                  buttonHeight: 120,
                  buttonMinWidth: 170,
                  children: <Widget>[
                    RaisedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.check_circle),
                      label: Text('Tasks'),
                      color: Colors.blue[400],
                    ),
                  ],
                ),
              ),
            ]));
      }),
    );
  }
}

void pushSaved1(BuildContext context) {
  Navigator.of(context).push(
    new MaterialPageRoute(builder: (context) {
      return new Scaffold(
          appBar: new AppBar(
            title: new Text(
              "Favourite music!",
            ),
          ),
          body: SongList());
    }),
  );
}
