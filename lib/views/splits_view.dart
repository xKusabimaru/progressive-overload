import 'package:flutter/material.dart';

class SplitsView extends StatelessWidget {
  const SplitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Splits"),
          backgroundColor: const Color(0xff242424),
          shadowColor: const Color(0xff0F0F0F),
        ),
        body: Center(
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
}
