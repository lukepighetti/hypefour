// ignore_for_file: unnecessary_const

import 'dart:ui';

import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:google_fonts/google_fonts.dart';

const double p4 = 0.5 * p8;
const double p8 = 8;
const double p12 = 1.5 * p8;
const double p16 = 2 * p8;
const double p20 = 2.5 * p8;
const double p24 = 3 * p8;
const double p32 = 4 * p8;
const double p40 = 5 * p8;
const double p48 = 6 * p8;

const double t2 = 2.0;

typedef HypeFourIcons = TablerIcons;

final HypeFourStyles = (
  spacing: const (
    p8: p8,
    p12: p12,
    p16: p16,
    p24: p24,
    p32: p32,
  ),
  thickness: const (t2: t2),
  bg: const (
    light1: Color(0xFFFFFFFF),
    light2: Color(0xFFE2E2E2),
    dark1: Color(0xFF000000),
    dark2: Color(0xFF2E2E2E),
  ),
  fg: const (
    onLight1: Color(0xFF2E2E2E),
    onLight2: Color(0xFF4E4E4E),
    onLight3: Color(0xFF6E6E6E),
    onDark1: Color(0xFFE2E2E2),
    onDark2: Color(0xFFC2C2C2),
    onDark3: Color(0xFFA2A2A2),
  ),
  accent: const (
    red: Color(0xFFCF1717),
    orange: Color(0xFFF27C0D),
    amber: Color(0xFFF2C70D),
    lime: Color(0xFFB5D926),
    green: Color(0xFF33CC34),
    seafoam: Color(0xFF21C4AF),
    teal: Color(0xFF0BCCF4),
    blue: Color(0xFF0B6FF4),
    indigo: Color(0xFF6019E6),
    purple: Color(0xFFBF19E6),
    pink: Color(0xFFE6198F),
  ),
  type: (
    plusJakartaSans: GoogleFonts.plusJakartaSans(),
    inter: GoogleFonts.inter(),
    satoshi: TextStyle(fontFamily: 'Satoshi'),
    poppins: GoogleFonts.poppins(),
    ubuntu: GoogleFonts.ubuntu(),
    firaSans: GoogleFonts.firaSans(),
    figtree: GoogleFonts.figtree(),
    font8: GoogleFonts.lato(),
    font9: GoogleFonts.mulish(),
    font10: GoogleFonts.openSans(),
    font11: GoogleFonts.ptSans(),
    font12: GoogleFonts.sourceSans3(), // Source Sans Pro
  )
);
