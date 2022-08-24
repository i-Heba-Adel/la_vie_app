import 'dart:async';
import 'package:flutter/material.dart';
import 'package:la_vie/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
            context ,
            MaterialPageRoute(
              builder: (cont)=> LoginScreen(),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(
          252,
          252,
          245,
          1
      ),
      body: Center(
        child: Image.asset(
          'assets/image/splash/splash.png'
        )
      ),
    );
  }
}
