import 'package:flutter/material.dart';
import 'package:flutter_diary/app/auth/auth.dart';
import 'package:flutter_diary/app/auth/auth_controller.dart';
import 'package:flutter_diary/app/router/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(dependencies: [])
GoRouter router(RouterRef ref) {
  final authState = ValueNotifier<AsyncValue<Auth>>(const AsyncLoading());

  ref
    ..onDispose(authState.dispose)
    ..listen(
      authControllerProvider.select((value) => value.whenData((value) => value)),
      (_, next) => authState.value = next,
    );

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: SplashRoute.path,
    refreshListenable: authState,
    redirect: (context, state) async {
      if (authState.value.unwrapPrevious().hasError) {
        return const SignInRoute().location;
      }

      if (authState.value.isLoading || !authState.value.hasValue) {
        return const SplashRoute().location;
      }

      final auth = authState.value.requireValue;

      final isSplash = state.uri.path == const SplashRoute().location;
      if (isSplash) {
        return auth is! SignedOut ? const HomeRoute().location : const SignInRoute().location;
      }

      final isSignIn = state.uri.path == const SignInRoute().location;
      if (isSignIn) {
        return authState.value.value?.maybeMap(
          signedIn: (signedIn) => const HomeRoute().location,
          signingUp: (signingUp) => const RegisterRoute().location,
          orElse: () => null,
        );
      }

      return auth is! SignedOut ? null : const SplashRoute().location;
    },
    observers: [
      // LeanRouteObserver(),
      // routeObserver,
    ],
    debugLogDiagnostics: true,
    routes: $appRoutes,
    onException: (_, GoRouterState state, GoRouter router) {
      // router.go('/404', extra: state.uri.toString());
    },
  );

  ref.onDispose(router.dispose);

  return router;
}
