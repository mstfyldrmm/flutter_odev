import 'package:flutter/material.dart';
import 'package:flutter_application_1/odev_3/responsive/mobileBody.dart';

class DesktopBody2 extends StatefulWidget {
  const DesktopBody2({Key? key}) : super(key: key);
  @override
  State<DesktopBody2> createState() => _DesktopBody2State();
}

class _DesktopBody2State extends State<DesktopBody2> {
  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size;
    return Scaffold(
        body: _currentWidth.width < 600 && _currentWidth.height < 719
            ? Menu()
            : Row(
                children: [
                  Expanded(flex: 3, child: Menu()),
                  Expanded(flex: 14, child: MobileBody2(false)),
                ],
              ));
  }
}

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AspectRatio(
              aspectRatio: 12 / 9,
              child: Container(
                child: Center(child: Text('Rauf Rahiche')),
                color: Colors.green,
              ),
            ),
          ),
        ),
        Expanded(
            child: ListTile(
          title: Text('Home'),
        )),
        Expanded(
            child: ListTile(
          title: Text('Profile'),
        )),
        Expanded(
            child: ListTile(
          title: Text('Calls'),
        )),
        Expanded(
            child: ListTile(
          title: Text('Messages'),
        )),
        Spacer(
          flex: 6,
        )
      ],
    );
  }
}
