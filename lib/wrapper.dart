import 'package:flutter/material.dart';
import 'package:progressive_overload/views/landing_view.dart';
import 'package:progressive_overload/views/main_view.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  bool isSignedIn = true;

  @override
  Widget build(BuildContext context) {
    
    if(isSignedIn){
      return MainView();
    }
    else{
      return LandingView();
    }

  }
}