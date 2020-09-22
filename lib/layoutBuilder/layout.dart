import 'package:flutter/material.dart';
import 'package:newBalance_LandingPage/src/Desktop/NewBalanceDesktop.dart';
import 'package:newBalance_LandingPage/src/mobile/NewBalanceMobile.dart';

class NBHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return Desktop();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return Desktop();
      } else {
        return Mobile();
      }
    });
  }
}
