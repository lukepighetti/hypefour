import 'package:flutter/widgets.dart';

class TripleRail extends StatelessWidget {
  const TripleRail({
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
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: leading,
          ),
        ),
        if (middle != null) middle!,
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: trailing,
          ),
        ),
      ],
    );
  }
}
