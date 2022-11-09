import 'package:flutter/material.dart';

class MobileSecondBody extends StatefulWidget {
  final int data;
  MobileSecondBody(this.data);

  @override
  State<MobileSecondBody> createState() => _MobileSecondBodyState();
}

class _MobileSecondBodyState extends State<MobileSecondBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Center(
          child: Text(
        '${widget.data}',
        style: Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(color: Colors.white),
      )),
    );
  }
}
