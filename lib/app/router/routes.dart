import 'package:flutter/material.dart';
import 'package:flutter_diary/presentation/pages/home/home_page.dart';
import 'package:flutter_diary/presentation/pages/sign_in/sign_in_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: SplashRoute.path, name: SplashRoute.name)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  static const String path = '/splash';

  static const String name = 'splash_view';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container(color: Colors.orange);
  }
}

@TypedGoRoute<SignInRoute>(path: SignInRoute.path, name: SignInRoute.name)
class SignInRoute extends GoRouteData {
  const SignInRoute();

  static const path = '/sign-in';

  static const String name = 'signin_view';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SignInPage();
  }
}

@TypedGoRoute<RegisterRoute>(path: RegisterRoute.path, name: RegisterRoute.name)
class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  static const path = '/sign-up';

  static const String name = 'signup_view';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Container();
  }
}

@TypedGoRoute<HomeRoute>(path: HomeRoute.path, name: HomeRoute.name)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/home';

  static const String name = 'home_view';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}