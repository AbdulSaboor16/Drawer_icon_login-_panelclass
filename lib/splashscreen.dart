import 'dart:async';

import 'package:designapp/homepage.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     Timer(
      Duration (seconds: 3),
      ()=> Navigator.pushReplacement(
        context,
      MaterialPageRoute(builder: (context) => const Home()),
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/png logo.png'),
      ),
    );
  }
}