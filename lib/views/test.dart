// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:progressive_overload/constents.dart';

import '../services/auth_service.dart';

class testView extends StatefulWidget {
  const testView({Key? key}) : super(key: key);

  @override
  State<testView> createState() => _testView();
}

class _testView extends State<testView> {
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
    return MaterialApp(
      home: Scaffold(
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
                  AuthService().signUp(email!, password!);
                },
                child: Text(
                  'submit',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
