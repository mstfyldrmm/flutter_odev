import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_3/responsive/desktopBody.dart';

class MobileBody2 extends StatefulWidget {
  bool secim;
  MobileBody2(this.secim);

  @override
  State<MobileBody2> createState() => _MobileBody2State();
}

class _MobileBody2State extends State<MobileBody2> {
  @override
  Widget build(BuildContext context) {
    final _current = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: widget.secim ? Icon(Icons.menu) : SizedBox.shrink()),
      body: Center(
        child: Text(
          "Size ${_current.width} * ${_current.height}",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
