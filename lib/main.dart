import 'package:flutter/material.dart';
import 'package:progressive_overload/wrapper.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://boaqhokemdxpzmxliydy.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJvYXFob2tlbWR4cHpteGxpeWR5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQ3NjAwNzIsImV4cCI6MTk5MDMzNjA3Mn0.7YlfKWITe_4mijU-Wm_efxUm1TgdO6-DYg_Vy5XQpQQ",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper()
    );
  }
}
