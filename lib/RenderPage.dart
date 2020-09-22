import 'package:flutter/material.dart';
import 'package:newBalance_LandingPage/SplashScreen.dart';

class NewBalance extends StatelessWidget {
  const NewBalance({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "AirBnb"),
      home: NewBalanceSplashScreen(),
    );
  }
}
