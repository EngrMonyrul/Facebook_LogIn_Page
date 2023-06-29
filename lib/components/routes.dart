import 'package:flutter/material.dart';

import '../screens/homeScreen.dart';
import '../screens/splashScreen.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => const SplashScreen(),
    'home': (context) => const HomePage(),
  };
}
