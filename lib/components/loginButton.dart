import 'package:flutter/material.dart';

InkWell loginButton(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Container(
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width * 1.0,
      decoration: const BoxDecoration(color: Colors.blue),
      child: const Text(
        'Log In',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20),
      ),
    ),
  );
}