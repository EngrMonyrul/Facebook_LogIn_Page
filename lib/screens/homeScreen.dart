import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/facebookLogo.dart';
import '../components/forgetPassword.dart';
import '../components/inputSection.dart';
import '../components/languageBar.dart';
import '../components/loginButton.dart';
import '../components/newAccount.dart';
import '../components/orSection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            facebookLogo(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  languageBar(),
                  const SizedBox(
                    height: 70,
                  ),
                  inputSection('Phone or email', false),
                  const SizedBox(
                    height: 10,
                  ),
                  inputSection('Password', true),
                  const SizedBox(
                    height: 30,
                  ),
                  loginButton(context),
                  const SizedBox(
                    height: 30,
                  ),
                  forgetPassword(),
                  const SizedBox(
                    height: 30,
                  ),
                  orSection(),
                  const SizedBox(
                    height: 30,
                  ),
                  newAccount(context)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
