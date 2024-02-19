import 'dart:ui';

import 'package:flutter/material.dart' hide IconButton, AppBar;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypefour/app_theme.dart';
import 'package:hypefour/assets.dart';
import 'package:hypefour/hypefour.dart';
import 'package:hypefour/widgets/app_bar.dart';
import 'package:hypefour/widgets/icon_button.dart';
import 'package:hypefour/widgets/tappable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        extensions: [AppTheme()],
        textTheme: GoogleFonts.plusJakartaSansTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: HypeFourStyles.bg.light1,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            // aspectRatio: 1,
            height: MediaQuery.viewPaddingOf(context).top + 37 * 8 + p24,
            child: AnnotatedRegion(
              value: SystemUiOverlayStyle.light,
              child: ClipPath(
                clipper: const ShapeBorderClipper(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(p40),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        airbnbUrl(1200),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned.fill(
                      child: ColoredBox(
                        color: context.theme.skrimColor.withOpacity(0.3),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.viewPaddingOf(context).top + p48 + p12,
                      bottom: p40 * 2 + p32,
                      left: p24,
                      right: p24,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: p4 / 2,
                            children: [
                              for (final _ in [1, 2, 3, 4, 5])
                                Icon(
                                  HypeFourIcons.star_filled,
                                  color: HypeFourStyles.accent.amber,
                                ),
                            ],
                          ),
                          const SizedBox(height: p8),
                          Text(
                            "Squarehead's\nLounge",
                            style: TextStyle(
                              color: context.theme.fillLight,
                              fontSize: f32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: p40 * 2,
                      child: ClipPath(
                        clipper: const ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(p40),
                              topLeft: Radius.circular(p40),
                            ),
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: ColoredBox(
                            color: context.theme.fillLight.withOpacity(0.05),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: p12),
                                child: Row(
                                  children: [
                                    for (final x in [
                                      "Overview",
                                      "Rooms",
                                      "Promotion",
                                      "Amenities",
                                      "Refund"
                                    ])
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: p12),
                                        child: Tappable(
                                          onTap: () {},
                                          child: Text(
                                            x,
                                            style: TextStyle(
                                              color: context.theme.onFillDark,
                                              fontSize: f14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              context.theme.skrimColor.withOpacity(0.8),
                              context.theme.skrimColor.withOpacity(0.0),
                            ],
                          ),
                        ),
                        child: AppBar(
                          leading: IconButton(
                            variant: IconButtonVariant.blurOnDark,
                            icon: HypeFourIcons.chevron_left,
                            offset: const Offset(-1, 0),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: p12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: p12),
            child: Wrap(
              spacing: p40,
              children: [
                for (final x in IconButtonVariant.values)
                  IconButton(
                    icon: HypeFourIcons.chevron_left,
                    offset: const Offset(-1, 0),
                    variant: x,
                    onTap: () {},
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
