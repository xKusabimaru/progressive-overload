import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:progressive_overload/constents.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MainAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(sArrowBack),
        onPressed: () {
          if (title != "Splits" && title != "Calories") {
            Navigator.pop(context);
          }
        },
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 25,
          color: Color(mainTextColor),
        ),
      ),
      backgroundColor: Color(backGroundColor),
      shadowColor: Colors.black,
      shape:
          Border(bottom: BorderSide(color: Color(mainButtonColor), width: 1)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
