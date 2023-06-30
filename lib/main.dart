import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sharebutton/another_section/provider/favItemProvider.dart';
import 'package:sharebutton/another_section/screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> FavItem()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'facebook',
        // initialRoute: '/',
        // routes: routes(),
        theme: ThemeData(
          fontFamily: 'Times New Roman'
        ),
        home: const MainScreen(),
      ),
    );
  }
}
