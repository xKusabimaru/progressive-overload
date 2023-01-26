// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:progressive_overload/constents.dart';

class CaloriesView extends StatefulWidget {
  const CaloriesView({Key? key}) : super(key: key);

  @override
  State<CaloriesView> createState() => _CaloriesViewState();
}

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

class _CaloriesViewState extends State<CaloriesView> {
  final appBar = AppBar(
    title: Text(
      "Calories",
      style: TextStyle(
        fontSize: 25,
        color: Color(mainTextColor),
      ),
    ),
    backgroundColor: Color(backGroundColor),
    shadowColor: Colors.black,
    shape: Border(bottom: BorderSide(color: Color(mainButtonColor), width: 1)),
  );

  String? _system;
  String? _gender;
  String? _age;
  String? _hightCM;
  String? _hightFT;
  String? _hightIN;
  String? _weight;
  String? _activity;

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
                                  "System of Measurement",
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
                    SizedBox(height: usedHeight / 32),
                    Container(
                      height: usedHeight / 5.7,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Gender",
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
                    SizedBox(height: usedHeight / 32),
                    Container(
                        height: usedHeight / 5.7,
                        decoration: BoxDecoration(
                          color: Color(containerColor),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border:
                              Border.all(width: 1, color: Color(strokeColor)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          child: GridView.count(
                            crossAxisCount: _system == "Imperial" ? 4 : 3,
                            crossAxisSpacing: 10,
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            children: [
                              Column(
                                children: [
                                  Text("Age",
                                      style: TextStyle(
                                        fontSize: usedHeight / 36,
                                        color: Color(mainTextColor),
                                      )),
                                  SizedBox(height: usedHeight / 130),
                                  Flexible(
                                      child: SizedBox(
                                          height: usedHeight / 14,
                                          width: usedWidth / 6,
                                          child: TextField(
                                            onChanged: (value) {
                                              setState(() {
                                                _age = value;
                                              });
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
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Weight",
                                      style: TextStyle(
                                        fontSize: usedHeight / 36,
                                        color: Color(mainTextColor),
                                      )),
                                  SizedBox(height: usedHeight / 130),
                                  Flexible(
                                      child: SizedBox(
                                          height: usedHeight / 14,
                                          width: usedWidth / 6,
                                          child: TextField(
                                            onChanged: (value) {
                                              setState(() {
                                                _weight = value;
                                              });
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
                                ],
                              ),
                              if (_system == "Imperial") ...[
                                Column(
                                  children: [
                                    Text("Feet",
                                        style: TextStyle(
                                          fontSize: usedHeight / 36,
                                          color: Color(mainTextColor),
                                        )),
                                    SizedBox(height: usedHeight / 130),
                                    Flexible(
                                        child: SizedBox(
                                            height: usedHeight / 14,
                                            width: usedWidth / 6,
                                            child: TextField(
                                              onChanged: (value) {
                                                setState(() {
                                                  _hightFT = value;
                                                });
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      Color(mainTextColor),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              mainButtonColor)))),
                                            ))),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Inches",
                                        style: TextStyle(
                                          fontSize: usedHeight / 36,
                                          color: Color(mainTextColor),
                                        )),
                                    SizedBox(height: usedHeight / 130),
                                    Flexible(
                                        child: SizedBox(
                                            height: usedHeight / 14,
                                            width: usedWidth / 6,
                                            child: TextField(
                                              onChanged: (value) {
                                                setState(() {
                                                  _hightIN = value;
                                                });
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      Color(mainTextColor),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              mainButtonColor)))),
                                            ))),
                                  ],
                                ),
                              ] else ...[
                                Column(
                                  children: [
                                    Text("Hight",
                                        style: TextStyle(
                                          fontSize: usedHeight / 36,
                                          color: Color(mainTextColor),
                                        )),
                                    SizedBox(height: usedHeight / 130),
                                    Flexible(
                                        child: SizedBox(
                                            height: usedHeight / 14,
                                            width: usedWidth / 6,
                                            child: TextField(
                                              onChanged: (value) {
                                                setState(() {
                                                  _hightCM = value;
                                                });
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                  filled: true,
                                                  fillColor:
                                                      Color(mainTextColor),
                                                  enabledBorder: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  10)),
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              mainButtonColor)))),
                                            ))),
                                  ],
                                ),
                              ]
                            ],
                          ),
                        )),
                    // Container(
                    //   height: usedHeight / 5.7,
                    //   child: Padding(
                    //       padding: const EdgeInsets.symmetric(
                    //           vertical: 10.0, horizontal: 10.0),
                    //       child: Column(children: [
                    //         Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //           children: [
                    //             Text(
                    //               "Age",
                    //               style: TextStyle(
                    //                 fontSize: usedHeight / 36,
                    //                 color: Color(mainTextColor),
                    //               ),
                    //             ),
                    //             Text(
                    //               "Weight",
                    //               style: TextStyle(
                    //                 fontSize: usedHeight / 36,
                    //                 color: Color(mainTextColor),
                    //               ),
                    //             ),
                    //             if (_system == "Imperial") ...[
                    //               Text(
                    //                 "Feat",
                    //                 style: TextStyle(
                    //                   fontSize: usedHeight / 36,
                    //                   color: Color(mainTextColor),
                    //                 ),
                    //               ),
                    //               Text(
                    //                 "Inches",
                    //                 style: TextStyle(
                    //                   fontSize: usedHeight / 36,
                    //                   color: Color(mainTextColor),
                    //                 ),
                    //               ),
                    //             ] else ...[
                    //               Text(
                    //                 "Hight",
                    //                 style: TextStyle(
                    //                   fontSize: usedHeight / 36,
                    //                   color: Color(mainTextColor),
                    //                 ),
                    //               ),
                    //             ]
                    //           ],
                    //         ),
                    //         Padding(
                    //           padding: EdgeInsets.only(
                    //               top: (usedHeight / 50),
                    //               right: 5.0,
                    //               left: 5.0),
                    //           child: Row(
                    //             mainAxisAlignment:
                    //                 MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               Flexible(
                    //                   child: SizedBox(
                    //                       height: usedHeight / 14,
                    //                       width: usedHeight / 10,
                    //                       child: TextField(
                    //                         onChanged: (value) {
                    //                           setState(() {
                    //                             _age = value;
                    //                           });
                    //                         },
                    //                         keyboardType: TextInputType.number,
                    //                         decoration: InputDecoration(
                    //                             filled: true,
                    //                             fillColor: Color(mainTextColor),
                    //                             enabledBorder: OutlineInputBorder(
                    //                                 borderRadius:
                    //                                     BorderRadius.all(
                    //                                         Radius.circular(
                    //                                             10)),
                    //                                 borderSide: BorderSide(
                    //                                     color: Color(
                    //                                         mainButtonColor)))),
                    //                       ))),
                    //               Flexible(
                    //                   child: SizedBox(
                    //                       height: usedHeight / 14,
                    //                       width: usedHeight / 10,
                    //                       child: TextField(
                    //                         onChanged: (value) {
                    //                           setState(() {
                    //                             _weight = value;
                    //                           });
                    //                         },
                    //                         keyboardType: TextInputType.number,
                    //                         decoration: InputDecoration(
                    //                             filled: true,
                    //                             fillColor: Color(mainTextColor),
                    //                             enabledBorder: OutlineInputBorder(
                    //                                 borderRadius:
                    //                                     BorderRadius.all(
                    //                                         Radius.circular(
                    //                                             10)),
                    //                                 borderSide: BorderSide(
                    //                                     color: Color(
                    //                                         mainButtonColor)))),
                    //                       ))),
                    //               if (_system == "Imperial") ...[
                    //                 Flexible(
                    //                     child: SizedBox(
                    //                         height: usedHeight / 14,
                    //                         width: usedHeight / 10,
                    //                         child: TextField(
                    //                           keyboardType:
                    //                               TextInputType.number,
                    //                           onChanged: (value) {
                    //                             setState(() {
                    //                               _hightFT = value;
                    //                             });
                    //                           },
                    //                           decoration: InputDecoration(
                    //                               filled: true,
                    //                               fillColor:
                    //                                   Color(mainTextColor),
                    //                               enabledBorder: OutlineInputBorder(
                    //                                   borderRadius:
                    //                                       BorderRadius.all(
                    //                                           Radius.circular(
                    //                                               10)),
                    //                                   borderSide: BorderSide(
                    //                                       color: Color(
                    //                                           mainButtonColor)))),
                    //                         ))),
                    //                 Flexible(
                    //                     child: SizedBox(
                    //                         height: usedHeight / 14,
                    //                         width: usedHeight / 10,
                    //                         child: TextField(
                    //                           keyboardType:
                    //                               TextInputType.number,
                    //                           onChanged: (value) {
                    //                             setState(() {
                    //                               _hightIN = value;
                    //                             });
                    //                           },
                    //                           decoration: InputDecoration(
                    //                               filled: true,
                    //                               fillColor:
                    //                                   Color(mainTextColor),
                    //                               enabledBorder: OutlineInputBorder(
                    //                                   borderRadius:
                    //                                       BorderRadius.all(
                    //                                           Radius.circular(
                    //                                               10)),
                    //                                   borderSide: BorderSide(
                    //                                       color: Color(
                    //                                           mainButtonColor)))),
                    //                         )))
                    //               ] else ...[
                    //                 Flexible(
                    //                     child: SizedBox(
                    //                         height: usedHeight / 14,
                    //                         width: usedHeight / 10,
                    //                         child: TextField(
                    //                           keyboardType:
                    //                               TextInputType.number,
                    //                           onChanged: (value) {
                    //                             setState(() {
                    //                               _hightCM = value;
                    //                             });
                    //                           },
                    //                           decoration: InputDecoration(
                    //                               filled: true,
                    //                               fillColor:
                    //                                   Color(mainTextColor),
                    //                               enabledBorder: OutlineInputBorder(
                    //                                   borderRadius:
                    //                                       BorderRadius.all(
                    //                                           Radius.circular(
                    //                                               10)),
                    //                                   borderSide: BorderSide(
                    //                                       color: Color(
                    //                                           mainButtonColor)))),
                    //                         )))
                    //               ]
                    //             ],
                    //           ),
                    //         )
                    //       ])),
                    //   decoration: BoxDecoration(
                    //     color: Color(containerColor),
                    //     borderRadius: BorderRadius.all(Radius.circular(10)),
                    //     border: Border.all(width: 1, color: Color(strokeColor)),
                    //   ),
                    // ),
                    SizedBox(height: usedHeight / 32),
                    Container(
                      height: usedHeight / 5.7,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Activity Level",
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                )),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: usedHeight / 86, horizontal: 5.0),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text(
                                    "Pick an Activity Level",
                                    style: TextStyle(
                                      fontSize: usedHeight / 36,
                                      color: Color(mainTextColor),
                                    ),
                                  ),
                                  dropdownColor: Color(unpickedButtonColor),
                                  iconEnabledColor: Color(mainTextColor),
                                  style: TextStyle(
                                    fontSize: usedHeight / 36,
                                    color: Color(mainTextColor),
                                  ),
                                  items: <String>[
                                    "Not Active: little or no exercise",
                                    "Light Activity: exercise 1-3 times per week",
                                    "Moderate Activity: exercise 4-5 times per week",
                                    "Very Active: exercise 6-7 times per week",
                                    "extremely Active: very intense exercise daily",
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(
                                          fontSize: usedHeight / 48,
                                          color: Color(mainTextColor),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  value: _activity,
                                  onChanged: (value) {
                                    setState(() {
                                      _activity = value;
                                    });
                                  },
                                ))
                          ])),
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
                        onPressed: () {
                          if (_system != null &&
                              _gender != null &&
                              isNumeric(_age!) &&
                              isNumeric(_weight!) &&
                              isNumeric(_hightCM!) &&
                              _activity != null) {
                            //calculate

                            //Sedentary. If you get minimal or no exercise, multiply your BMR by 1.2.
                            // Lightly active. If you exercise lightly one to three days a week, multiply your BMR by 1.375.
                            // Moderately active. If you exercise moderately three to five days a week, multiply your BMR by 1.55.
                            // Very active. If you engage in hard exercise six to seven days a week, multiply your BMR by 1.725.
                            // Extra active. If you engage in very hard exercise six to seven days a week or have a physical job, multiply your BMR by 1.9.

                            double? _BMR;
                            double? _weight2 = double.parse(_weight!);
                            double? _hightCM2 = double.parse(_hightCM!);
                            double? _age2 = double.parse(_age!);

                            // For men:
                            // BMR = 10W + 6.25H - 5A + 5
                            if (_gender == "Male") {
                              _BMR = 10 * _weight2 +
                                  6.25 * _hightCM2 -
                                  5 * _age2 +
                                  5;
                              if (_activity ==
                                  "Not Active: little or no exercise") {
                                _BMR = _BMR * 1.2;
                              } else if (_activity ==
                                  "Light Activity: exercise 1-3 times per week") {
                                _BMR = _BMR * 1.375;
                              } else if (_activity ==
                                  "Moderate Activity: exercise 4-5 times per week") {
                                _BMR = _BMR * 1.55;
                              } else if (_activity ==
                                  "Very Active: exercise 6-7 times per week") {
                                _BMR = _BMR * 1.725;
                              } else if (_activity ==
                                  "extremely Active: very intense exercise daily") {
                                _BMR = _BMR * 1.9;
                              }

                              // For women:
                              // BMR = 10W + 6.25H - 5A - 161
                            } else {
                              _BMR = 10 * _weight2 +
                                  6.25 * _hightCM2 -
                                  5 * _age2 -
                                  161;
                              if (_activity ==
                                  "Not Active: little or no exercise") {
                                _BMR = _BMR * 1.2;
                              } else if (_activity ==
                                  "Light Activity: exercise 1-3 times per week") {
                                _BMR = _BMR * 1.375;
                              } else if (_activity ==
                                  "Moderate Activity: exercise 4-5 times per week") {
                                _BMR = _BMR * 1.55;
                              } else if (_activity ==
                                  "Very Active: exercise 6-7 times per week") {
                                _BMR = _BMR * 1.725;
                              } else if (_activity ==
                                  "extremely Active: very intense exercise daily") {
                                _BMR = _BMR * 1.9;
                              }
                            }
                            showDialog(
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                backgroundColor: Color(backGroundColor),
                                title: Text(
                                  "Calorie intake",
                                  style: TextStyle(
                                    color: Color(mainTextColor),
                                  ),
                                ),
                                content: RichText(
                                    text: TextSpan(
                                  style: TextStyle(
                                    color: Color(mainTextColor),
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "To Maintain Your Weight:\n\n"),
                                    TextSpan(
                                        text: _BMR?.ceil().toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: " Calories/day"),
                                  ],
                                )),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text("OK"))
                                ],
                              ),
                              context: context,
                            );
                          } else {
                            //pop up a massege to fill all the fields

                            showDialog(
                              builder: (context) => AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                backgroundColor: Color(backGroundColor),
                                title: Text(
                                  "Warning",
                                  style: TextStyle(
                                    color: Color(mainTextColor),
                                  ),
                                ),
                                content: Text(
                                  "FILL ALL INFORMATION",
                                  style: TextStyle(
                                    color: Color(mainTextColor),
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text("OK"))
                                ],
                              ),
                              context: context,
                            );
                          }
                        },
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
