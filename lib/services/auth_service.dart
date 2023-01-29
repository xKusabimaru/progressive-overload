import 'package:progressive_overload/constents.dart';
import 'package:supabase/supabase.dart';

const String supabaseUrl = sSupabaseUrl;
const String token = sToken;

class AuthService {
  final supabase = SupabaseClient(supabaseUrl, token);

  signUp(String email, String password) async {
    final AuthResponse res =
        await supabase.auth.signUp(email: email, password: password);

    final Session? session = res.session;
    final User? user = res.user;
  }

  signIn(String email, String password) async {
    final AuthResponse res = await supabase.auth
        .signInWithPassword(email: email, password: password);

    final Session? session = res.session;
    final User? user = res.user;
  }

  signOut() async {
    await supabase.auth.signOut();
  }

  getSession() async {
    final Session? session = supabase.auth.currentSession;
    return session;
  }

  getUser() async {
    final User? user = supabase.auth.currentUser;
    return user;
  }

  updateEmail(email) async {
    final UserResponse res = await supabase.auth.updateUser(
      UserAttributes(
        email: email,
      ),
    );

    final User? updatedUser = res.user;
  }

  updatePassword(password) async {
    final UserResponse res = await supabase.auth.updateUser(
      UserAttributes(
        password: password,
      ),
    );

    final User? updatedUser = res.user;
  }
}
