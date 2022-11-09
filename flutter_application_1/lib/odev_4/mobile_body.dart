import 'package:flutter/material.dart';
import 'mobile_second_screen.dart';

class MobileBody extends StatefulWidget {
  MobileBody({Key? key, required this.listTileCount, required this.ekranSecim})
      : super(key: key);
  final int listTileCount;
  late int listTileOnTap;
  final bool ekranSecim;

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  int adetNo = 0;
  void listTileOnTap(int deger) {
    widget.listTileOnTap = deger;
    adetNo = widget.listTileOnTap;
    setState(() {
      adetNo = widget.listTileOnTap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text('$index'),
                onTap: () {
                  listTileOnTap(index);
                  widget.ekranSecim
                      ? Navigator.of(context)
                          .push(MaterialPageRoute(builder: (contex) {
                          return MobileSecondBody(widget.listTileOnTap);
                        }))
                      : SizedBox.shrink();
                },
              ),
            );
          },
          itemCount: widget.listTileCount),
    );
  }
}

class Data {
  final int data = _MobileBodyState().adetNo;
}
