import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

const String supabaseUrl = "https://boaqhokemdxpzmxliydy.supabase.co";
const String token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJvYXFob2tlbWR4cHpteGxpeWR5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQ3NjAwNzIsImV4cCI6MTk5MDMzNjA3Mn0.7YlfKWITe_4mijU-Wm_efxUm1TgdO6-DYg_Vy5XQpQQ";

class AuthService {
  final client = SupabaseClient(supabaseUrl, token);

  Future<void> signUp(String email, String password) async {
    final res = await client.auth.signUp(email: email, password: password);
  }

  Future<void> signIn(String email, String password) async {
    final res = await client.auth.signInWithPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    final res = await client.auth.signOut();
  }

  Future<void> getSession() async {
    final Session? session = client.auth.currentSession;
  }

  //todo later
  Future<void> insertSplit(name) async {
    await client.from('Splits').insert(name);
  }

  //todo later
  Future<void> insertDay() async {
    await client.from('Days').insert(DateTime.now());
  }

  //todo later
  Future<void> insertExercise() async {
    await client.from('Exercises').insert("");
  }

}
