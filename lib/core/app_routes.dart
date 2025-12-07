import 'package:go_router/go_router.dart';
import 'package:market/features/forgot_password/presentation/forgot_password_view.dart';
import 'package:market/features/login/presentation/views/login_view.dart';
import 'package:market/features/sign%20up/presentation/views/sign_up_view.dart';

class AppRoutes {
  static const String kLoginView = '/';
  static const String kSignUp = '/SignUpView';
  static const String kForgotPasswordView = '/ForgotPasswordView';

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
   ]
   );
}
