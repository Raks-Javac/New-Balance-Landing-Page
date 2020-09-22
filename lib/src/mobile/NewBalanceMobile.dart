import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  Mobile({Key key}) : super(key: key);

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      // color: Colors.black,
    ));
  }
}
