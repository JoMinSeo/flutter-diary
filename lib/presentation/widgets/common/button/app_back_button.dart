import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
    this.onBackBtnTapped,
  });

  final VoidCallback? onBackBtnTapped;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        onPressed: onBackBtnTapped ?? context.pop,
        icon: const Icon(Icons.arrow_back_ios),
      ),
    );
  }
}