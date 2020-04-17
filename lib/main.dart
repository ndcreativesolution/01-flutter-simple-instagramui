import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Istagram",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
            child: Text(MunculkanKalimat(
                    kalimatPanjang:
                        "Selamat pagi, ini adalah kalimat panjang menggunakan Flutter.",
                    jadiBesar: "Tidak")
                .harusJadiBesarAtauTidak())),
      ),
    );
  }
}

class MunculkanKalimat {
  String kalimatPanjang, kalimatPendek, jadiBesar;

  // ini namanya constructor atau pembentuk
  MunculkanKalimat({this.kalimatPanjang, this.kalimatPendek, this.jadiBesar});

  //MethodKalimatPanjang
  String getKalimatPanjang() => kalimatPanjang;
  setKalimatPanjang(String nilai) => kalimatPanjang = nilai;

  //MethodKalimatPendek
  String getKalimatPendek() => kalimatPendek;
  setKalimatPendek(String nilai) => kalimatPendek = nilai;

  //MethodSetUppercase
  String getJadiBesar() => jadiBesar;
  setJadiBesar(String nilai) => jadiBesar = nilai;

  String jadiHurufBesarSemua() {
    return kalimatPanjang.toUpperCase();
  }

  String harusJadiBesarAtauTidak() {
    // catatan : jika apakah mengandung adalah iya maka kalimat panjang
    // akan dirubah ke huruf besar
    if (jadiBesar.contains("Ya")) {
      return kalimatPanjang.toUpperCase();
    } else {
      return kalimatPanjang.toLowerCase();
    }
  }
}
