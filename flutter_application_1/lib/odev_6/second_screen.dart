import 'package:flutter/material.dart';

class SecondSecreen extends StatefulWidget {
  SecondSecreen({Key? key, required this.kullaniciAdi, required this.sifre})
      : super(key: key);
  final String kullaniciAdi;
  final String sifre;

  @override
  State<SecondSecreen> createState() => _SecondSecreenState();
}

class _SecondSecreenState extends State<SecondSecreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 179, 0, 203),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Kullanici Adi :${widget.kullaniciAdi}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Text(
              'Sifre : ${widget.sifre} ',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
