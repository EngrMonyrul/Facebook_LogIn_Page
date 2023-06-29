import 'package:flutter/material.dart';

Container inputSection(String text, bool password) {
  return Container(
    alignment: Alignment.center,
    child: TextFormField(
      obscureText: password,
      obscuringCharacter: '•',
      style: const TextStyle(color: Colors.grey, fontSize: 20),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        hintText: text,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}