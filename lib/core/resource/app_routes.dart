import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:market/features/Auth/forgot_password/presentation/forgot_password_view.dart';
import 'package:market/features/Auth/login/business_logic/authentication_cubit/authentication_cubit.dart';
import 'package:market/features/Auth/login/presentation/views/login_view.dart';
import 'package:market/features/Auth/sign%20up/presentation/views/sign_up_view.dart';
import 'package:market/features/home/bussiness_logic/nav_bar_cubit/nav_bar_cubit.dart';
import 'package:market/features/home/presentation/views/home.dart';
import 'package:market/features/product_details/presentation/views/product_details.dart';
import 'package:market/features/settings/presentation/views/my_order_view.dart';
import 'package:market/features/settings/presentation/views/user_profile.dart';

class AppRoutes {
  static const String kLoginView = '/';
  static const String kSignUp = '/SignUpView';
  static const String kForgotPasswordView = '/ForgotPasswordView';
  static const String kHome = '/Home';
  static const String kUserProfile = '/UserProfile';
  static const String kMyOrderView = '/MyOrderView';
  static const String kProductDetails = '/ProductDetails';

  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: kLoginView,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthenticationCubit(),
          child: LoginView(),
        ),
      ),
      GoRoute(path: kSignUp, builder: (context, state) => SignUpView()),
      GoRoute(
        path: kForgotPasswordView,
        builder: (context, state) => ForgotPasswordView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) =>
            BlocProvider(create: (context) => NavBarCubit(), child: Home()),
      ),
      GoRoute(path: kUserProfile, builder: (context, state) => UserProfile()),
      GoRoute(path: kMyOrderView, builder: (context, state) => MyOrderView()),
      GoRoute(
        path: kProductDetails,
        builder: (context, state) => ProductDetails(),
      ),
    ],
  );
}
