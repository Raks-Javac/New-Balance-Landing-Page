import 'package:flutter/material.dart';

class Desktop extends StatefulWidget {
  Desktop({Key key}) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    double fzie = 15;
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        BackGroundWidget(
          height: height,
          width: width,
        ),
        DisplayProduct(width: width, height: height),
        Positioned(
            right: width * 0.15,
            bottom: height * 0.15,
            child: Column(
              children: [],
            )),
        AppB(
          width: width,
          fzie: fzie,
        ),
        DisplayText()
      ],
    ));
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 4),
      tween: Tween<double>(begin: 200, end: 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: 490,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" New Balance Sports",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: "AirBnbM")),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Qui amet amet nulla aliqua deserunt. Et proident fugiat et commodo laboris ullamco in. Excepteur reprehenderit nulla magna non quis elit ullamco Lorem laboris enim excepteur. Dolore esse incididunt consectetur eiusmod enim pariatur ut amet reprehenderit aliquip. Magna ad commodo enim ullamco mollit sit aute Lorem dolore excepteur. Laboris minim non voluptate officia veniam magna velit nisi ipsum exercitation esse.",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "AirBnbL",
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Start Shopping",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AirBnbM",
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
      builder: (context, value, child) {
        return Padding(
          padding: EdgeInsets.only(right: value),
          child: child,
        );
      },
    );
  }
}

class AppB extends StatelessWidget {
  AppB({Key key, @required this.width, @required this.fzie}) : super(key: key);

  final double width;
  double fzie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        height: kToolbarHeight,
        width: width,
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            width: width * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 90,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontFamily: "AirBnbM"),
                ),
                InkWell(
                  onHover: (value) {
                    fzie = 20.0;
                  },
                  child: Text(
                    "Products",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "AirBnbL",
                        fontSize: 15),
                  ),
                ),
                Text(
                  "Just In",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "AirBnbL",
                      fontSize: fzie),
                ),
                Text(
                  "Sneakers",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "AirBnbL", fontSize: 15),
                ),
                Text(
                  "Sports",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "AirBnbL", fontSize: 15),
                ),
              ],
            ),
          ),
        ));
  }
}

class DisplayProduct extends StatelessWidget {
  const DisplayProduct({
    Key key,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: width * 0.11,
        top: height * 0.3,
        child: Transform.rotate(
          angle: -3.142 / 8,
          child: Image.asset(
            "assets/images/sneaker2.png",
            alignment: Alignment.centerRight,
          ),
        ));
  }
}

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({Key key, @required this.height, @required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                height: height,
                color: Colors.black,
                // child: Image.asset(
                //   "assets/images/nB5.jpg",
                //   fit: BoxFit.cover,
                //   alignment: Alignment.centerLeft,
                // ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
              )
            ],
          ),
        ),
        Container(
          width: width * 0.4,
          color: Colors.white,
        )
      ],
    );
  }
}
