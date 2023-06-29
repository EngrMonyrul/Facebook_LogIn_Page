import 'package:flutter/material.dart';

Text languageBar() {
  return Text.rich(
      TextSpan(
          style: const TextStyle(
              fontWeight: FontWeight.bold
          ),
          children: [
            TextSpan(
                text: '• বাংলা •',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                )
            ),
            TextSpan(
                text: ' English •',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                )
            ),
            const TextSpan(
                text: ' More...',
                style: TextStyle(
                    color: Colors.blue
                )
            )
          ]
      )
  );
}