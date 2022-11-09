import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_4/dimensions.dart';
import 'package:flutter_application_1/odev_4/mobile_body.dart';
import 'package:flutter_application_1/odev_4/mobile_second_screen.dart';

class DesktopBody extends StatefulWidget {
  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: MobileBody(listTileCount: listTileAdet, ekranSecim: false),
          ),
          Expanded(
            child: MobileSecondBody(Data().data),
          )
        ],
      ),
    );
  }
}
