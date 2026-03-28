import 'package:bloc/bloc.dart';
import 'package:market/core/constants.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());
  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    try {
      await Constants.client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      emit(LoginSuccess());
    } on AuthException catch (e) {
      emit(LoginFailed(errMsg: e.toString()));
    }catch (e){
      emit(LoginFailed(errMsg: e.toString()));
    }
  }
}
