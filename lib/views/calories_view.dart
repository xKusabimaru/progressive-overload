import 'package:flutter/material.dart';

class CaloriesView extends StatelessWidget {
  const CaloriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calories"),
          backgroundColor: Color(0xff242424),
          shadowColor: Color(0xff0F0F0F),
        ),
        body: Center(
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}