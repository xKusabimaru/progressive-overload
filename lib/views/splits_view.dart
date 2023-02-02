import 'package:flutter/material.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/services/data_service.dart';
import 'package:progressive_overload/views/main_drawer.dart';
import 'package:progressive_overload/wrapper.dart';

class SplitsView extends StatelessWidget {
  const SplitsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Splits"),
          backgroundColor: const Color(0xff242424),
          shadowColor: const Color(0xff0F0F0F),
        ),
        endDrawer: const MainDrawer(),
        body: Center(
          child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      print(await DataService.getAllUnhiddenSplits());
                    },
                    child: Text(
                      'print',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await AuthService.signOut();
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Wrapper(),
                          ));
                    },
                    child: Text(
                      'signOut',
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
