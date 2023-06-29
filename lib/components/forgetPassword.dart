import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Text forgetPassword() {
  return const Text(
    'Forget Password?',
    style: TextStyle(
        color: CupertinoColors.activeBlue,
        fontWeight: FontWeight.bold,
        fontSize: 20
    ),
  );
}