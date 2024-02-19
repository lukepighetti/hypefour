import 'package:flutter/material.dart';
import 'package:hypefour/hypefour.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  final accent = HypeFourStyles.accent.blue;
  final onAccent = HypeFourStyles.fg.onDark1;
  final bg = HypeFourStyles.bg.light1;
  final onBg = HypeFourStyles.fg.onLight1;
  late final subtleBg = bg.withOpacity(0.9);
  final onSubtleBg = HypeFourStyles.fg.onLight1;
  final fillDark = HypeFourStyles.bg.dark2;
  final onFillDark = HypeFourStyles.fg.onDark2;
  final fillLight = HypeFourStyles.bg.light1;
  final onFillLight = HypeFourStyles.fg.onLight1;

  ///
  ///
  static AppTheme of(BuildContext context) =>
      Theme.of(context).extension<AppTheme>()!;

  @override
  ThemeExtension<AppTheme> copyWith() => this;

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    return other == null || t < 0.5 ? this : other;
  }
}

extension AppThemeExtension on BuildContext {
  AppTheme get theme => AppTheme.of(this);
}
