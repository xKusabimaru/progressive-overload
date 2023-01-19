// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';

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
          color: Color(backGroundColor),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 88.0, horizontal: 20.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Row(children: [
                              Text(
                                "Choose a system: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(mainTextColor),
                                ),
                              ),
                              // Column(
                              //   children: [],
                              // )
                            ]))),
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(containerColor),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Color(strokeColor)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(containerColor),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Color(strokeColor)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(containerColor),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Color(strokeColor)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(containerColor),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(width: 1, color: Color(strokeColor)),
                    ),
                  ),
                  SizedBox(height: 110),
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Color(buttonTextColor),
                        backgroundColor: Color(buttonColor),
                        fixedSize: Size(150, 45),
                        // shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
