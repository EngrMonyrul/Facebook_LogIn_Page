import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sharebutton/providers/screenMode.dart';
import 'package:sharebutton/screens/homeScreen.dart';
import 'package:sharebutton/screens/splashScreen.dart';
import 'components/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'facebook',
      // initialRoute: '/',
      // routes: routes(),
      theme: ThemeData(
        fontFamily: 'facebook'
      ),
      home: const SplashScreen(),
    );
  }
}
