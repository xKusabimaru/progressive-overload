import 'package:flutter/material.dart';
import 'package:progressive_overload/views/landing_view.dart';
import 'package:progressive_overload/views/main_view.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/views/test.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.isSignedIn(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == true) {
            return const MainView();
          } else {
            return const TestView();
          }
        }

        return Container();
      },
    );
  }
}
