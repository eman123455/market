import 'package:market/core/resource/constants.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginWebService {
  Future<String?> loginWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    try {
      final response = await Constants.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      if (response.user == null) {
        throw Exception('Login failed. Please try again.');
      }
      return null;
    } on AuthException catch (e) {
      switch (e.message.toLowerCase()) {
        case 'invalid login credentials':
          return 'Invalid email or password';
        case 'email not confirmed':
          return 'Please confirm your email first';
        case 'user not found':
          return 'No account found with this email';
        default:
          return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }
}
