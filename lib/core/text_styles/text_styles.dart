import 'package:flutter/material.dart';
import 'package:ticketmaster/core/colors/app_colors.dart';

class TextStyles {
  static TextStyle titleTextStyle = const TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    fontFamily: 'TiemposHeadline',
  );

  static TextStyle subtitleTextStyle = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
    fontFamily: 'TiemposHeadline',
  );

  static TextStyle greySubtitleTextStyle = TextStyle(
    fontSize: 13,
    fontFamily: 'Inter',
    color: AppColors.greyColor,
  );

  static TextStyle boldGreySubtitleTextStyle = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    fontFamily: 'Inter',
    color: AppColors.greyColor,
  );

  static TextStyle blackSubtitleTextStyle = TextStyle(
    fontSize: 13,
    fontFamily: 'Inter',
    color: AppColors.blackText,
  );

  static TextStyle blackNormalTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: 'Inter',
    color: AppColors.blackText,
  );

  static TextStyle greyNormalTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: 'Inter',
    color: AppColors.greyColor,
  );

  static TextStyle orangeTextStyle = TextStyle(
    fontSize: 15,
    fontFamily: 'Inter',
    color: AppColors.orangeColor,
  );
}
