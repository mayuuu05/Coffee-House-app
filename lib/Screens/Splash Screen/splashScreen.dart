import 'dart:async';

import 'package:coffee_house/Screens/Intro%20Screen/intro.dart';
import 'package:coffee_house/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/intro');
    // });

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context,'/intro');
    });
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
       backgroundColor: Color(0xffefd9c2),
        body: Center(
          child: Container(
            child: Image.asset('assets/images/logo.png',
            height: height*0.3,),
          ),
        ),
      ),
    );
  }
}
