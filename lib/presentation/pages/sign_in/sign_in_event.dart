import 'package:flutter_diary/app/auth/auth_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

mixin class SignInEvent {
  Future<void> _userLogin(WidgetRef ref) async {
    return ref.watch(authControllerProvider.notifier).login();
  }

  Future<void> onSocialSignInBtnTapped(WidgetRef ref) async {
    await _userLogin(ref);
  }
}