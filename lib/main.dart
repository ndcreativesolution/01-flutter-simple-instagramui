import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Istagram",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        body: Center(
          child: Text(MunculkanKalimat().kalimatPanjang)),
      ),
    );
  }
}

class MunculkanKalimat {
  String kalimatPanjang = "Selamat pagi, ini adalah kalimat panjang dengan Flutter";
  String kalimatPendek = "Hello Worlds";
}