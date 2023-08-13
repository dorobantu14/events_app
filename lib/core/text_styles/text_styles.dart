import 'package:flutter/material.dart';
import 'package:ticketmaster/core/colors/app_colors.dart';

class TextStyles {
  static TextStyle titleTextStyle = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontFamily: 'TiemposHeadline'
  );

  static TextStyle subtitleTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    fontFamily: 'TiemposHeadline'
  );

  static TextStyle greySubtitleTextStyle = TextStyle(
    fontSize: 13,
    fontFamily: 'Inter',
    color: AppColors.greyColor
  );
}
