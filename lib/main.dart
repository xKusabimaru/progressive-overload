import 'package:flutter/material.dart';
import 'package:progressive_overload/constents.dart';
import 'package:progressive_overload/wrapper.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: sSupabaseUrl,
    anonKey: sToken,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Wrapper());
  }
}
