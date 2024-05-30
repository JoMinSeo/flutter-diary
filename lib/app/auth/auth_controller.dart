import 'package:flutter_diary/app/auth/auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  late Box _hiveBox;
  static const _hiveBoxKey = 'LOGIN_ACCOUNT';

  @override
  Future<Auth> build() async {
    _hiveBox = await Hive.openBox('user');

    _persistenceRefreshLogic();

    return _loginRecoveryAttempt();
  }

  Future<Auth> _loginRecoveryAttempt() {
    try {
      Auth? savedToken = _hiveBox.get(_hiveBoxKey);
      if (savedToken == null) throw const UnauthorizedException('No auth token found');

      return Future(() {
        return savedToken.map(
          signedIn: _loginWithToken,
          signingUp: (signingUp) {
            _hiveBox.delete(_hiveBoxKey).ignore();
            return Future.value(Auth.signedOut());
          },
          signedOut: (signedOut) => throw const UnauthorizedException('잘못된 정보가 저장되어있음'),
        );
      });
    } catch (_, __) {
      _hiveBox.delete(_hiveBoxKey).ignore();
      return Future.value(Auth.signedOut());
    }
  }

  Future<void> login() async {
    final loginState = SignedIn(name: 'minseocho');

    state = AsyncData(loginState);
  }

  Future<void> register() async {
    final loginState = SignedIn(name: 'minseocho');

    state = AsyncData(loginState);
  }

  Future<void> logout() async {
    state = AsyncData(Auth.signedOut());
  }

  // void escapeRegister() {
  //   ref.read(txSeqNoPod.notifier).update((state) => '');
  //   ref.read(termsProvider.notifier).toggleAll(false);
  //   state = AsyncData(Auth.signedOut());
  // }

  Future<Auth> _loginWithToken(Auth auth) async {
    if (auth is! SignedIn) return Auth.signedOut();
    
    final loginState = SignedIn(name: 'minseocho');
    
    if (loginState is SignedIn) {
      return loginState;
    }

    throw const UnauthorizedException('401 Unauthorized or something');
  }

  /// Internal method used to listen authentication state changes.
  /// When the auth object is in a loading state, nothing happens.
  /// When the auth object is in an error state, we choose to remove the token
  /// Otherwise, we expect the current auth value to be reflected in our persitence API
  void _persistenceRefreshLogic() {
    ref.listenSelf((_, next) {
      if (next.isLoading) return;
      if (next.hasError) {
        _hiveBox.delete(_hiveBoxKey);
        return;
      }

      next.requireValue.map<void>(
        signedIn: (signedIn) => _hiveBox.put(_hiveBoxKey, signedIn),
        signingUp: (signingUp) => _hiveBox.put(_hiveBoxKey, signingUp),
        signedOut: (signedOut) => _hiveBox.delete(_hiveBoxKey),
      );
    });
  }
}

/// Simple mock of a 401 exception
class UnauthorizedException implements Exception {
  const UnauthorizedException(this.message);

  final String message;
}
