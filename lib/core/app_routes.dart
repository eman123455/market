import 'package:go_router/go_router.dart';
import 'package:market/features/login/presentation/views/login_view.dart';

class AppRoutes {
  static const String kLoginView = '/';

  static GoRouter routes = GoRouter(
    routes:[
    GoRoute(
      path: kLoginView,
      builder: (context, state) =>  LoginView(),
      ),
   ]
   );
}
