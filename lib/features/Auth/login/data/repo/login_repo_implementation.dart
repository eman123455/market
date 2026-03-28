import 'package:market/features/Auth/login/data/login_services/login_web_service.dart';
import 'package:market/features/Auth/login/data/repo/login_repo.dart';

class LoginRepoImplementation implements LoginRepo {
  late LoginWebService loginWebService;
  LoginRepoImplementation(this.loginWebService);
  @override
  Future<String?> loginWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    final response = await loginWebService.loginWithEmailAndPass(
      email: email,
      password: password,
    );
    return response;
  }
}
