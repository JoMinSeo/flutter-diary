// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  // final AppColors colors = AppColors();

  late final _Corners corners = _Corners();

  late final _Shadows shadows = _Shadows();

  late final _Insets insets = _Insets();

  late final _Text text = _Text();

  final _Times times = _Times();
}

@immutable
class _Times {
  final Duration fast = const Duration(milliseconds: 300);
  final Duration low = const Duration(milliseconds: 400);
  final Duration medium = const Duration(milliseconds: 500);
  final Duration slow = const Duration(milliseconds: 1000);
  final Duration verySlow = const Duration(milliseconds: 2000);
  final Duration swiperDuration = const Duration(milliseconds: 2500);
  final Duration shadowDuration = const Duration(milliseconds: 800);
  final Duration pageTransition = const Duration(milliseconds: 200);
}

@immutable
class _Corners {
  late final double c2 = 2;
  late final double c4 = 4;
  late final double c5 = 5;
  late final double c6 = 6;
  late final double c8 = 8;
  late final double c10 = 10;
  late final double c12 = 12;
  late final double c16 = 16;
  late final double c20 = 20;
  late final double c26 = 26;
  late final double c30 = 30;
  late final double c100 = 100;
}

@immutable
class _Insets {
  late final double xxs = 4;
  late final double xs = 8;
  late final double s = 12;
  late final double sm = 16;
  late final double md = 20;
  late final double lg = 32;
  late final double xl = 48;
  late final double xxl = 56;
  late final double offset = 80;
}

@immutable
class _Shadows {
  final textSoft = [
    Shadow(color: Colors.black.withOpacity(.25), offset: const Offset(0, 2), blurRadius: 4),
  ];
  final text = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 2), blurRadius: 2),
  ];
  final textStrong = [
    Shadow(color: Colors.black.withOpacity(.6), offset: const Offset(0, 4), blurRadius: 6),
  ];
  final card = [
    const BoxShadow(color: Color(0x1A150634), offset: Offset(0, 8), blurRadius: 24),
  ];
}

@immutable
class _Text {
  final TextStyle _font = const TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w400);

  final TextStyle _mediumFont = const TextStyle(fontFamily: 'Pretendard' , fontWeight: FontWeight.w500);

  final TextStyle _semiboldFont = const TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w600);

  final TextStyle _boldFont = const TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.w800);

  TextStyle get font => _font;

  TextStyle get mediumFont => _mediumFont;

  TextStyle get semiboldFont => _semiboldFont;

  TextStyle get boldFont => _boldFont;

  late final TextStyle highlight = copy(boldFont, sizePx: 32, heightPx: 36);
  late final TextStyle headline1 = copy(boldFont, sizePx: 24, heightPx: 33);
  late final TextStyle headline2 = copy(boldFont, sizePx: 20, heightPx: 27);
  late final TextStyle headline3 = copy(semiboldFont, sizePx: 18, heightPx: 24);
  late final TextStyle title1 = copy(boldFont, sizePx: 16, heightPx: 22);
  late final TextStyle title2 = copy(semiboldFont, sizePx: 16, heightPx: 22);
  late final TextStyle title3 = copy(boldFont, sizePx: 14, heightPx: 20);
  late final TextStyle body1 = copy(semiboldFont, sizePx: 14, heightPx: 20);
  late final TextStyle body2 = copy(mediumFont, sizePx: 14, heightPx: 20);
  late final TextStyle body3 = copy(mediumFont, sizePx: 13, heightPx: 18);
  late final TextStyle alert1 = copy(boldFont, sizePx: 12, heightPx: 17);
  late final TextStyle alert2 = copy(font, sizePx: 12, heightPx: 17);

  TextStyle copy(TextStyle style, {required double sizePx, double? heightPx, double? spacingPc, FontWeight? weight}) {
    return style.copyWith(
      fontSize: sizePx,
      height: heightPx != null ? (heightPx / sizePx) : style.height,
      letterSpacing: spacingPc != null ? sizePx * spacingPc * 0.01 : style.letterSpacing,
      fontWeight: weight,
    );
  }
}
