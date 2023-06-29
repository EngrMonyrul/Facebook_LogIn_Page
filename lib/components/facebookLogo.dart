import 'package:flutter/material.dart';

Stack facebookLogo(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: const BoxDecoration(color: Colors.blueAccent),
      ),
      Container(
        height: 80,
        width: 80,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/icons/facebook.png'),
              fit: BoxFit.fill),
        ),
      )
    ],
  );
}