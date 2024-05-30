import 'package:flutter/material.dart';
import 'package:flutter_diary/presentation/pages/sign_in/sign_in_event.dart';
import 'package:flutter_diary/presentation/widgets/base/base_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends BasePage with SignInEvent {
  const SignInPage({super.key});

  @override
  Widget buildPage(BuildContext context, WidgetRef ref) {
    return Center(
      child: ElevatedButton(
        onPressed: () => onSocialSignInBtnTapped(ref),
        child: Text('로그인하기'),
      ),
    );
  }
}
