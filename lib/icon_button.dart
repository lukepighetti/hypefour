import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hypefour/app_theme.dart';
import 'package:hypefour/hypefour.dart';
import 'package:hypefour/widgets/tappable.dart';

enum IconButtonSize {
  normal(p48, p32),
  ;

  const IconButtonSize(this.dimension, this.iconSize);

  final double dimension;
  final double iconSize;
}

enum IconButtonVariant {
  normal,
  alt,
  subtle,
  blurOnLight,
  blurOnDark,
  ;
}

class IconButton extends StatelessWidget {
  const IconButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.size = IconButtonSize.normal,
    this.variant = IconButtonVariant.normal,
    this.offset = Offset.zero,
    this.iconSize,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final IconButtonSize size;
  final IconButtonVariant variant;
  final Offset offset;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final bg = switch (variant) {
      IconButtonVariant.normal => context.theme.accent,
      IconButtonVariant.alt => context.theme.fillDark,
      IconButtonVariant.subtle => context.theme.subtleBg,
      IconButtonVariant.blurOnLight => context.theme.fillDark.withOpacity(0.2),
      IconButtonVariant.blurOnDark => context.theme.fillLight.withOpacity(0.2),
    };

    final fg = switch (variant) {
      IconButtonVariant.normal => context.theme.onAccent,
      IconButtonVariant.alt => context.theme.onFillDark,
      IconButtonVariant.subtle => context.theme.onSubtleBg,
      IconButtonVariant.blurOnLight => context.theme.fillDark,
      IconButtonVariant.blurOnDark => context.theme.fillLight,
    };

    final borderColor = switch (variant) {
      IconButtonVariant.normal => null,
      IconButtonVariant.alt => context.theme.fillDark,
      IconButtonVariant.subtle => context.theme.onSubtleBg,
      IconButtonVariant.blurOnLight => Colors.transparent,
      IconButtonVariant.blurOnDark => Colors.transparent,
    };

    return Tappable(
      onTap: onTap,
      child: SizedBox.square(
        dimension: size.dimension,
        child: WidgetBuilder(
          builder: (context, child) {
            return switch (variant) {
              IconButtonVariant.blurOnLight ||
              IconButtonVariant.blurOnDark =>
                ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: child,
                  ),
                ),
              _ => child,
            };
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bg,
              border: borderColor == null
                  ? null
                  : Border.all(
                      color: borderColor,
                      width: t2,
                    ),
            ),
            child: Transform.translate(
              offset: offset,
              child: Icon(
                icon,
                color: fg,
                size: iconSize ?? size.iconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetBuilder extends StatelessWidget {
  const WidgetBuilder({
    super.key,
    required this.builder,
    required this.child,
  });

  final Widget Function(BuildContext context, Widget child) builder;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return builder(context, child);
  }
}
