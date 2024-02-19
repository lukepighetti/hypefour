import 'dart:ui';

import 'package:flutter/material.dart';

import '/widgets/saturation.dart';

class Tappable extends StatefulWidget {
  const Tappable({super.key, required this.child, required this.onTap});

  final Widget child;

  final VoidCallback? onTap;

  @override
  State<Tappable> createState() => _TappableState();
}

class _TappableState extends State<Tappable> {
  var pressed = false;

  @override
  Widget build(BuildContext context) {
    final enabled = widget.onTap != null;

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          pressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          pressed = false;
        });

        widget.onTap?.call();
      },
      onTapCancel: () {
        setState(() {
          pressed = false;
        });
      },
      child: ColoredBox(
        color: Colors.transparent, // improve hit size
        child: TweenAnimationBuilder<double>(
          tween: Tween(end: pressed ? 0 : 1),
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          builder: (context, t, child) {
            return Opacity(
              opacity: enabled ? lerpDouble(0.70, 1.0, t)! : 0.5,
              child: Transform.scale(
                alignment: Alignment.center,
                scale: enabled ? lerpDouble(0.97, 1.0, t)! : 1.0,
                child: Saturation(
                  saturation: enabled ? 1.0 : 0.0,
                  child: child!,
                ),
              ),
            );
          },
          child: widget.child,
        ),
      ),
    );
  }
}
