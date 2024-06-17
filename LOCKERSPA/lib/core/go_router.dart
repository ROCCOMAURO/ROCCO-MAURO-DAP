import 'package:go_router/go_router.dart';
import 'package:tp_listview/screens/home_screen.dart';
import 'package:tp_listview/screens/locker1_screen.dart';
import 'package:tp_listview/screens/login_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    name: HomeScreen.name,
    path: '/home',
    builder: (context, state) => const HomeScreen(),
  ),
GoRoute(
    name: Locker1Screen.name,
    path: '/Locker1',
    builder: (context, state) => const Locker1Screen(),
  ),
]);
