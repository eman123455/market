import 'package:get_it/get_it.dart';
import 'package:market/features/Auth/login/data/login_services/login_web_service.dart';
import 'package:market/features/Auth/login/data/repo/login_repo_implementation.dart';

final getIt = GetIt.instance;
void startServiceLocator() {
  getIt.registerSingleton<LoginRepoImplementation>(
    LoginRepoImplementation(LoginWebService()),
  );
}
