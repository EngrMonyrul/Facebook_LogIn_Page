import 'package:flutter/material.dart';

Stack orSection() {
  return Stack(
    alignment: Alignment.center,
    children: [
      const Divider(
        color: Colors.grey,
        height: 10,
        thickness: 1,
      ),
      Container(
        color: Colors.white,
        child: const Text(
          'OR',
          style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold
          ),
        ),
      )
    ],
  );
}