import 'package:flutter/material.dart';
import 'package:flutter_diary/app/style/app_styles.dart';
import 'package:flutter_diary/presentation/widgets/common/button/app_back_button.dart';
import 'package:go_router/go_router.dart';

class BackButtonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BackButtonAppBar({
    super.key,
    this.title,
    this.onBackBtnTapped,
    this.actions,
  });

  final String? title;

  final VoidCallback? onBackBtnTapped;

  final List<Widget>? actions;

  static const double appbarHeight = 56;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: actions,
      title: Text(
        title ?? '',
        style: $styles.text.headline2,
      ),
      toolbarHeight: appbarHeight,
      leadingWidth: 56,
      leading: AppBackButton(
        onBackBtnTapped: onBackBtnTapped ?? context.pop,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}