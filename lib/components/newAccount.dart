import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container newAccount(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width*0.7,
    height: 40,
    decoration: const BoxDecoration(
        color: CupertinoColors.activeGreen,
        borderRadius: BorderRadius.all(Radius.circular(5))
    ),
    child: const Text(
      'Create New Facebook Account',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),
    ),
  );
}