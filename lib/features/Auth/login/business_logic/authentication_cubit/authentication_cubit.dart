import 'package:bloc/bloc.dart';
import 'package:market/core/resource/constants.dart';
import 'package:market/core/utils/service_locator.dart';
import 'package:market/features/Auth/login/data/repo/login_repo_implementation.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());
  final repo = getIt.get<LoginRepoImplementation>();
  Future<void> loginWithEmailAndPass({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

  final result = await repo.loginWithEmailAndPass(
    email: email,
    password: password,
  );

  if (result == null) {
    emit(LoginSuccess());
  } else {
    emit(LoginFailed(errMsg: result));
  }
  }
}
