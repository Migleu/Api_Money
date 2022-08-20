import 'dart:async';
import 'package:flutter/material.dart';
import 'package:casa_apostas/view/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 44.92, bottom: 46.55),
            child: Image.asset(
              "assets/img/money.jpg",
              width: 559.67,
              height: 109.14,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
