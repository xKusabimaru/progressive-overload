// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';

class CaloriesView extends StatefulWidget {
  const CaloriesView({Key? key}) : super(key: key);

  @override
  State<CaloriesView> createState() => _CaloriesViewState();
}

class _CaloriesViewState extends State<CaloriesView> {
  final appBar = AppBar(
    title: Text("Calories"),
    backgroundColor: Color(0xff242424),
    shadowColor: Color(0xff0F0F0F),
  );

  String? _system;
  String? _gender;
  String? _age;
  String? _hight;
  String? _weight;
  int? _activity;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double appBarHeight = appBar.preferredSize.height;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double usedHeight =
        screenHeight - (2 * appBarHeight) - statusBarHeight;
    final double usedWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: Center(
        child: Container(
          color: Color(backGroundColor),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: (usedHeight / 36), horizontal: 20.0),
            child: Center(
              child: SingleChildScrollView(
                // physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: usedHeight / 5.7,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Choose a system: ",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: (usedHeight / 86),
                                    horizontal: 5.0),
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
                                            fontSize: usedHeight / 36,
                                            color: _system == "Metric"
                                                ? Color(unpickedButtonColor)
                                                : Color(pickedButtonColor)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: _system == "Metric"
                                            ? Color(pickedButtonColor)
                                            : Color(unpickedButtonColor),
                                        fixedSize: Size(
                                            usedHeight / 5, usedHeight / 12),
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
                                            fontSize: usedHeight / 36,
                                            color: _system == "Imperial"
                                                ? Color(unpickedButtonColor)
                                                : Color(pickedButtonColor)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: _system == "Imperial"
                                            ? Color(pickedButtonColor)
                                            : Color(unpickedButtonColor),
                                        fixedSize: Size(
                                            usedHeight / 5, usedHeight / 12),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ],
                                ))
                          ])),
                      decoration: BoxDecoration(
                        color: Color(containerColor),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: Color(strokeColor)),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: usedHeight / 5.7,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Gender: ",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: usedHeight / 86, horizontal: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() => _gender = "Male");
                                      },
                                      child: Text(
                                        'Male',
                                        style: TextStyle(
                                            fontSize: usedHeight / 36,
                                            color: _gender == "Male"
                                                ? Color(unpickedButtonColor)
                                                : Color(pickedButtonColor)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: _gender == "Male"
                                            ? Color(pickedButtonColor)
                                            : Color(unpickedButtonColor),
                                        fixedSize: Size(
                                            usedHeight / 5, usedHeight / 12),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() => _gender = "Female");
                                      },
                                      child: Text(
                                        'Female',
                                        style: TextStyle(
                                            fontSize: usedHeight / 36,
                                            color: _gender == "Female"
                                                ? Color(unpickedButtonColor)
                                                : Color(pickedButtonColor)),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: _gender == "Female"
                                            ? Color(pickedButtonColor)
                                            : Color(unpickedButtonColor),
                                        fixedSize: Size(
                                            usedHeight / 5, usedHeight / 12),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                    ),
                                  ],
                                ))
                          ])),
                      decoration: BoxDecoration(
                        color: Color(containerColor),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: Color(strokeColor)),
                      ),
                    ),
                    SizedBox(height: usedHeight / 24),
                    Container(
                      height: usedHeight / 5.7,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                ),
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                ),
                                Text(
                                  "Hight",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: (usedHeight / 50),
                                  right: 5.0,
                                  left: 5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                      child: SizedBox(
                                          height: usedHeight / 14,
                                          width: usedHeight / 10,
                                          child: TextField(
                                            onChanged: (value) {
                                              _age = value;
                                            },
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Color(mainTextColor),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    borderSide: BorderSide(
                                                        color: Color(
                                                            mainButtonColor)))),
                                          ))),
                                  Flexible(
                                      child: SizedBox(
                                          height: usedHeight / 14,
                                          width: usedHeight / 10,
                                          child: TextField(
                                            onChanged: (value) {
                                              _weight = value;
                                            },
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Color(mainTextColor),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    borderSide: BorderSide(
                                                        color: Color(
                                                            mainButtonColor)))),
                                          ))),
                                  Flexible(
                                      child: SizedBox(
                                          height: usedHeight / 14,
                                          width: usedHeight / 10,
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {
                                              _hight = value;
                                            },
                                            decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Color(mainTextColor),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                    borderSide: BorderSide(
                                                        color: Color(
                                                            mainButtonColor)))),
                                          )))
                                ],
                              ),
                            )
                          ])),
                      decoration: BoxDecoration(
                        color: Color(containerColor),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: Color(strokeColor)),
                      ),
                    ),
                    SizedBox(height: usedHeight / 24),
                    Container(
                      height: usedHeight / 5.7,
                      decoration: BoxDecoration(
                        color: Color(containerColor),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(width: 1, color: Color(strokeColor)),
                      ),
                    ),
                    SizedBox(height: usedHeight / 46),
                    TextButton(
                        style: TextButton.styleFrom(
                          primary: Color(buttonTextColor),
                          backgroundColor: Color(mainButtonColor),
                          fixedSize: Size(usedHeight / 4, usedHeight / 12),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            fontSize: usedHeight / 30,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
