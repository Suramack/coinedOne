import 'package:flutter/material.dart';

TextStyle get liteTextStyle => const TextStyle(fontSize: 12);

TextStyle get boldHeadingTextStyle => const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );

TextStyle get headingTextStyle => const TextStyle(
      fontSize: 24,
    );

TextStyle get mediumLiteTextStyle => const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );

TextStyle get mediumBoldTextStyle => const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );

TextStyle get mediumLiteBoldTextStyle => const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );

TextStyle get greenMediumBoldTextStyle => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Colors.green.shade600,
    );

TextStyle get blueMediumBoldTextStyle => const TextStyle(
      fontSize: 18,
      // fontWeight: FontWeight.w500,
      color: Colors.blue,
    );
