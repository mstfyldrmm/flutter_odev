import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_2/ana_ekran.dart';
import 'package:flutter_application_1/odev_2/login_page.dart';
import 'odev_1/ekran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Ekran(),
    );
  }
}
