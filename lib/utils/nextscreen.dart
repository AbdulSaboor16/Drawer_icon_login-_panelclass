import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("your account successfull done 🤣👍",
        style: TextStyle(
          fontWeight: FontWeight.w800,
        ),
        ),
      ),
    );
  }
}