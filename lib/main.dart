import 'dart:ui';

import 'package:flutter/material.dart' hide IconButton;
import 'package:hypefour/app_theme.dart';
import 'package:hypefour/assets.dart';
import 'package:hypefour/hypefour.dart';
import 'package:hypefour/icon_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(extensions: [AppTheme()]),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: HypeFourStyles.bg.light1,
      child: SafeArea(
        minimum: EdgeInsets.all(p16),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                airbnbUrl(1200),
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    for (final x in IconButtonVariant.values)
                      IconButton(
                        icon: HypeFourIcons.chevron_left,
                        offset: Offset(-1, 0),
                        // iconSize: 30,
                        variant: x,
                        onTap: () {},
                      ),
                  ],
                ),
                Placeholder(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
