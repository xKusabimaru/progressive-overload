import 'package:progressive_overload/constents.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase/supabase.dart';

const String supabaseUrl = sSupabaseUrl;
const String token = sToken;

final supabase = SupabaseClient(supabaseUrl, token);

class AuthService {
  static setSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('id', getUser().id);
  }

  static removeSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('id');
  }

  static signUp(String email, String password) async {
    try {
      final AuthResponse res =
          await supabase.auth.signUp(email: email, password: password);

      // final Session? session = res.session;
      // final User? user = res.user;

      setSharedPreferences();

      return true;
    } catch (err) {
      return false;
    }
  }

  static signIn(String email, String password) async {
    try {
      final AuthResponse res = await supabase.auth
          .signInWithPassword(email: email, password: password);

      // final Session? session = res.session;
      // final User? user = res.user;

      setSharedPreferences();

      return true;
    } catch (err) {
      return false;
    }
  }

  static signOut() async {
    await supabase.auth.signOut();
    removeSharedPreferences();
  }

  static getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('id');
  }

  static isSignedIn() async {
    if (await getUserId() != null) {
      return true;
    }
    return false;
  }

  // wierd reaction from these two functions
  static getSession() {
    return supabase.auth.currentSession;
  }

  static getUser() {
    return supabase.auth.currentUser;
  }
  //

  // untested functions
  static updateEmail(email) async {
    final UserResponse res = await supabase.auth.updateUser(
      UserAttributes(
        email: email,
      ),
    );

    final User? updatedUser = res.user;
  }

  static updatePassword(password) async {
    final UserResponse res = await supabase.auth.updateUser(
      UserAttributes(
        password: password,
      ),
    );

    final User? updatedUser = res.user;
  }
  //
}
