import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int backgroundColor = Colors.black.value;

int primaryColor = Colors.blue.shade600.value;
int textColor = Colors.white.value;

double fontSmall = 14.0;

double fontMedium = 16.0;

double fontLarge = 18.0;
double defaultPadding = 24.0;

TextStyle textSmall =
    GoogleFonts.lato(fontSize: fontSmall, fontWeight: FontWeight.normal);

TextStyle textSmallTitle =
    GoogleFonts.lato(fontSize: fontSmall, fontWeight: FontWeight.bold);

TextStyle textMedium =
    GoogleFonts.lato(fontSize: fontMedium, fontWeight: FontWeight.normal);

TextStyle textMediumTitle =
    GoogleFonts.lato(fontSize: fontMedium, fontWeight: FontWeight.bold);

TextStyle textLarge =
    GoogleFonts.lato(fontSize: fontLarge, fontWeight: FontWeight.normal);

TextStyle textLargeTitle =
    GoogleFonts.lato(fontSize: fontLarge, fontWeight: FontWeight.bold);

double isTablet = 768;

ButtonStyle defaultTextButtonStyle = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(Color(textColor)),
    padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 10)));
TextButtonThemeData textButtonTheme =
    TextButtonThemeData(style: defaultTextButtonStyle);

ButtonStyle? navigatorSidebarButtonStyle = textButtonTheme.style?.copyWith(
    padding: WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 20)),
    backgroundColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.hovered)
            ? Color(primaryColor).withOpacity(0.1)
            : Colors.transparent),
    foregroundColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.hovered)
            ? Color(textColor)
            : Color(textColor).withOpacity(0.6)),
    animationDuration: Duration(milliseconds: 300),
    shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
