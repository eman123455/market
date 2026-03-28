abstract class LoginRepo {
  Future<String?> loginWithEmailAndPass({
    required String email,
    required String password,
  });
}