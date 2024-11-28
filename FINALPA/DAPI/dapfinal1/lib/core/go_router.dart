import 'package:dapfinal1/screens/add_movie_screen.dart';
import 'package:dapfinal1/screens/crearuser.dart';
import 'package:dapfinal1/screens/home_screen.dart';
import 'package:dapfinal1/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    name: LoginScreen.name,
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
    GoRoute(
    name: UserScreen.name,
    path: '/crearusuario',
    builder: (context, state) => const UserScreen(),
  ),
    GoRoute(
    name: HomeScreen.name,
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: AddMovieScreen.name,
    path: '/addmovie',
    builder: (context, state) =>  AddMovieScreen(),
  ),
  ]
  );