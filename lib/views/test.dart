// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/wrapper.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestView();
}

class _TestView extends State<TestView> {
  final appBar = AppBar(
    title: Text(
      "Splits",
      style: TextStyle(
        fontSize: 25,
        color: Color(mainTextColor),
      ),
    ),
    backgroundColor: Color(backGroundColor),
    shadowColor: Colors.black,
    shape: Border(bottom: BorderSide(color: Color(mainButtonColor), width: 1)),
  );
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splits"),
        backgroundColor: const Color(0xff242424),
        shadowColor: const Color(0xff0F0F0F),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () async {
                if (await AuthService.signIn(email!, password!)) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wrapper(),
                      ));
                }
              },
              child: Text(
                'signIn',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (await AuthService.signUp(email!, password!)) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Wrapper(),
                      ));
                }
              },
              child: Text(
                'signUp',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
