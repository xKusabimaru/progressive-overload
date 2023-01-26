import 'package:flutter/material.dart';

class SplitsView extends StatelessWidget {
  const SplitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      color: Colors.red,
=======
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Splits"),
          backgroundColor: const Color(0xff242424),
          shadowColor: const Color(0xff0F0F0F),
        ),
        body: Center(
          child: Container(
            color: Colors.red
          ),
        ),
      ),
>>>>>>> a74a4b27c64567da7b1149c05e201f8024362ed4
    );
  }
}