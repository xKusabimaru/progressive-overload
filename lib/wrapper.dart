import 'package:flutter/material.dart';
import 'package:progressive_overload/views/landing_view.dart';
import 'package:progressive_overload/views/main_view.dart';
import 'package:progressive_overload/services/auth_service.dart';
import 'package:progressive_overload/views/test.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  bool isLogedIn = AuthService().getSession() != null;

  @override
  Widget build(BuildContext context) {
    
    if(isLogedIn){
      return const MainView();
    }
    else{
      return const TestView();
    }

  }
}