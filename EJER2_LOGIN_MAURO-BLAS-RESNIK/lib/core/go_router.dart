import 'package:go_router/go_router.dart';
import 'package:EJER2_LOGIN_MAURO-BLAS-RESNIK/screens/home_screen.dart';
import 'package:EJER2_LOGIN_MAURO-BLAS-RESNIK/screens/login_Screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => HomeScreen(),
  ),
]);
