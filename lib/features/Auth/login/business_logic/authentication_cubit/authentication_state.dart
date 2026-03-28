part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class LoginSuccess extends AuthenticationState {}

final class LoginFailed extends AuthenticationState {
  final String errMsg;
  LoginFailed({required this.errMsg});
  
}

final class LoginLoading extends AuthenticationState {}
