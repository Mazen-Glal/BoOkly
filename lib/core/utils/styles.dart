import 'package:flutter/material.dart';

abstract class Styles{
  static const titleMedium = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // the must be expressive about where this style will be used and the what the size of this text
  static const bookTitle20 = TextStyle(
    overflow: TextOverflow.ellipsis,
    fontSize: 20,
    fontFamily: 'bookTitle',
    letterSpacing: 0,
    fontWeight: FontWeight.w900,
  );

  static const authorTitle14 = TextStyle(
    fontSize: 14,
    fontFamily: 'authorTitle',
    letterSpacing: 0,
  );

  static const price15 = TextStyle(
    fontSize: 15,
    letterSpacing: 0,
    fontWeight: FontWeight.w900,
  );

  static const rate16 = TextStyle(
    fontSize: 16,
    letterSpacing: 0,
  );

}