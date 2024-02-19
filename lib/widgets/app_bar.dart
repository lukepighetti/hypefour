import 'package:flutter/material.dart';
import 'package:hypefour/hypefour.dart';
import 'package:hypefour/widgets/triple_rail.dart';

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    this.leading,
    this.middle,
    this.trailing,
  });

  final Widget? leading;
  final Widget? middle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      minimum: const EdgeInsets.symmetric(
        vertical: p12,
        horizontal: p24,
      ),
      child: TripleRail(
        leading: leading,
        middle: middle,
        trailing: trailing,
      ),
    );
  }
}
