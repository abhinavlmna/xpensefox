import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xpensefox/Screens/home.dart';

class Splashscrn extends StatefulWidget {
  const Splashscrn({super.key});

  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Homescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black, body: Center(child: Splashimg()));
  }
}

class Splashimg extends StatelessWidget {
  const Splashimg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Stack(
        children: [
          Positioned(
              top: 70,
              child: Image.asset(
                'assets/images/splash1.png',
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 100,
              left: 80,
              child: Image.asset(
                'assets/images/splash2.png',
                height: 20,
                width: 100,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 125,
              left: 160,
              child: Image.asset(
                'assets/images/splash3.png',
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 125,
              left: 177,
              child: Image.asset(
                'assets/images/splash4.png',
                height: 20,
                width: 20,
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 110,
              left: 185,
              child: Image.asset(
                'assets/images/splash5.png',
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
