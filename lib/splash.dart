// ignore_for_file: prefer_const_constructors

import 'package:diabetic_detection/form.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation =
        Tween<double>(begin: 50, end: 200).animate(animationController!);
    animationController!.forward();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => FormScreen()));
    });
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animation!,
          builder: (context, child) => Container(
            width: animation!.value,
            height: animation!.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: const[ Color(0xFF33415C),
        Color(0xFF0353A4),],begin: Alignment.topCenter,
      end: Alignment.bottomCenter,)
            ),
          ),
        ),
      ),
    );
  }
}
