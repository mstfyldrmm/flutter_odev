import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_4/desktop_body.dart';
import 'package:flutter_application_1/odev_4/dimensions.dart';
import 'package:flutter_application_1/odev_4/mobile_body.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _currentWidth < 600
          ? MobileBody(
              ekranSecim: true,
              listTileCount: listTileAdet,
            )
          : DesktopBody(),
    );
  }
}
