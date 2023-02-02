import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/views/calories_view.dart';
import 'package:progressive_overload/views/splits_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 1.0, color: Color(mainButtonColor)))),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xffFFFFFF),
            unselectedItemColor: const Color(0xff707070),
            backgroundColor: const Color(backGroundColor),
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.task,
                ),
                label: 'Splits',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calculate,
                ),
                label: 'Calories',
              )
            ],
          )),
      body: IndexedStack(
        index: currentIndex,
        children: [const SplitsView(), CaloriesView()],
      ),
    );
  }
}
