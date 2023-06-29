import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sharebutton/screens/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: non_constant_identifier_names
  ChangeScreen() {
    Timer(const Duration(milliseconds: 1200), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    });
    // Timer.periodic(Duration(milliseconds: 85), (timer) {
    //   Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => const HomePage()));
    // });
    // Future.delayed(const Duration(milliseconds: 85), () {
    //   Get.to((context) => const HomePage());
    // });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangeScreen();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
            alignment: Alignment.center,
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('facebook.com',
                      curve: Curves.easeIn,
                      speed: const Duration(milliseconds: 80)),
                ],
              ),
            )),
      ),
    );
  }
}
