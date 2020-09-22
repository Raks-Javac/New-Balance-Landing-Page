import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newBalance_LandingPage/layoutBuilder/layout.dart';

class NewBalanceSplashScreen extends StatefulWidget {
  NewBalanceSplashScreen({Key key}) : super(key: key);

  @override
  _NewBalanceSplashScreenState createState() => _NewBalanceSplashScreenState();
}

class _NewBalanceSplashScreenState extends State<NewBalanceSplashScreen> {
  final splashDelay = 2;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => NBHome()));
  }

  double m(m) {
    return m.toDouble();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                  duration: Duration(seconds: 2),
                  curve: Curves.linear,
                  tween: Tween<double>(
                    begin: m(0),
                    end: m(1),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 400,
                      )),
                  builder: (context, double _vl, child) {
                    return Opacity(
                      opacity: _vl,
                      child: child,
                    );
                  }),
              SizedBox(
                height: 45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
