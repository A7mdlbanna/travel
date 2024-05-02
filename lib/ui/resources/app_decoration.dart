import 'package:flutter/material.dart';
import 'package:travel/ui/helper/index.dart';
import 'package:travel/ui/resources/app_colors.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: AppColors.black,
      );

  static BoxDecoration get fillPink => BoxDecoration(color: AppColors.pink400, shape: BoxShape.circle);

  static BoxDecoration get fillPrimary => BoxDecoration(
        color: AppColors.primary,
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadiusStyle.roundedBorder16,
        border: Border.all(color: Colors.white, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: AppColors.indigoA7000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: AppColors.primary,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineblack => BoxDecoration();
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: AppColors.black.withOpacity(0.5),
        border: Border.all(
          color: AppColors.primary,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: AppColors.black.withOpacity(0.3),
        border: Border.all(
          color: AppColors.whiteA700,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        color: AppColors.primary,
        border: Border.all(
          color: AppColors.whiteA700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
    color: AppColors.blueGray50,
    borderRadius: BorderRadiusStyle.circleBorder28,
  );

  static BoxDecoration get myMessage => BoxDecoration(
    color: AppColors.lightBlue4003d,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15.r),
      topRight: Radius.circular(15.r),
      bottomLeft: Radius.circular(15.r),
    ),

  );
  static BoxDecoration get otherMessage => BoxDecoration(
    color: AppColors.gray80060,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15.r),
      topRight: Radius.circular(15.r),
      bottomRight: Radius.circular(15.r),
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        28.h,
      );
  static BorderRadius get circleBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder53 => BorderRadius.circular(
        53.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
