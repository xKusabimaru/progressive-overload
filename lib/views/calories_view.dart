// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';

class CaloriesView extends StatefulWidget {
  const CaloriesView({Key? key}) : super(key: key);

  @override
  State<CaloriesView> createState() => _CaloriesViewState();
}

class _CaloriesViewState extends State<CaloriesView> {
  String? _system;
  String? _gender;
  double? _age;
  double? _hight;
  double? _weight;
  int? _activity;

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
              child: ListView(
                children: [
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Choose a system: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(mainTextColor),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() => _system = "Metric");
                                    },
                                    child: Text(
                                      'Metric',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: _system == "Metric"
                                              ? Color(unpickedButtonColor)
                                              : Color(pickedButtonColor)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: _system == "Metric"
                                          ? Color(pickedButtonColor)
                                          : Color(unpickedButtonColor),
                                      fixedSize: Size(110, 45),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() => _system = "Imperial");
                                    },
                                    child: Text(
                                      'Imperial',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: _system == "Imperial"
                                              ? Color(unpickedButtonColor)
                                              : Color(pickedButtonColor)),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: _system == "Imperial"
                                          ? Color(pickedButtonColor)
                                          : Color(unpickedButtonColor),
                                      fixedSize: Size(110, 45),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                    ),
                                  ),
                                ],
                              ))
                        ])),
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
                        backgroundColor: Color(mainButtonColor),
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
