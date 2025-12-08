import 'package:go_router/go_router.dart';
import 'package:market/features/Auth/forgot_password/presentation/forgot_password_view.dart';
import 'package:market/features/Auth/login/presentation/views/login_view.dart';
import 'package:market/features/Auth/sign%20up/presentation/views/sign_up_view.dart';
import 'package:market/features/home/presentation/views/home.dart';

class AppRoutes {
  static const String kLoginView = '/';
  static const String kSignUp = '/SignUpView';
  static const String kForgotPasswordView = '/ForgotPasswordView';
  static const String kHome = '/Home';

  static GoRouter routes = GoRouter(
    routes:[
    GoRoute(
      path: kLoginView,
      builder: (context, state) =>  LoginView(),
      ),
    GoRoute(
      path: kSignUp,
      builder: (context, state) =>  SignUpView(),
      ),
    GoRoute(
      path: kForgotPasswordView,
      builder: (context, state) =>  ForgotPasswordView(),
      ),
    GoRoute(
      path: kHome,
      builder: (context, state) =>  Home(),
      ),
   ]
   );
}
