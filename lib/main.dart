import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _list = [
    "movie",
    "hobies",
    "travel",
    "shop",
    "food",
    "igTv",
    "jobs",
    "home"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Istagram App",
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
                child: Container(
                    child: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.all(8),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(child: Icon(Icons.arrow_back_ios)),
                    Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            child: Text("umarfadil.id"))),
                    Container(child: Icon(Icons.more_horiz))
                  ])),
          Container(
            child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Container(
                  padding: EdgeInsets.all(8), child: CircleAvatar(radius: 40)),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(8),
                      child: Column(children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "2.487",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("post")
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "21.487",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("followers")
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "487",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text("following")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                  color: Colors.blue,
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () => print("Follow"),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                child: RaisedButton(
                                    child: Icon(Icons.arrow_drop_down,
                                        color: Colors.white),
                                    color: Colors.blue,
                                    onPressed: () => print("Down")),
                              )
                            ],
                          ),
                        )
                      ])))
            ]),
          ),
          Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Umar Fadil, S.Kom",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                Text("your bio here"),
                Text("tambahannya lagi "),
                Text("dan keterangan lainnya")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: _list
                      .map((e) => Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(children: <Widget>[
                            CircleAvatar(radius: 30),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(e))
                          ])))
                      .toList()),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Icon(
                    Icons.accessibility,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Icon(
                    Icons.account_box,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Icon(
                    Icons.add_call,
                    size: 30,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                children: List.generate(
                    6,
                    (index) => Container(
                          color: Colors.blue,
                        )),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Icon(Icons.home),
                  onPressed: () => print("home"),
                ),
                FlatButton(
                  child: Icon(Icons.search),
                  onPressed: () => print("home"),
                ),
                FlatButton(
                  child: Icon(Icons.add_box),
                  onPressed: () => print("home"),
                ),
                FlatButton(
                  child: Icon(Icons.account_circle),
                  onPressed: () => print("home"),
                ),
                FlatButton(
                  child: Icon(Icons.people),
                  onPressed: () => print("home"),
                ),
              ],
            ),
          )
        ])))));
  }
}
