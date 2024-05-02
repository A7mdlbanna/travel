import 'package:flutter/material.dart';
import 'package:travel/ui/helper/index.dart';
import 'package:travel/ui/resources/app_colors.dart';


/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillWhiteA => ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get fillWhiteABL14 => ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteA700.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
              14.h,
            ),
          ),
        ),
      );

  static ButtonStyle get fillDark => ElevatedButton.styleFrom(
        backgroundColor: AppColors.black.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineWhiteA => OutlinedButton.styleFrom(
        backgroundColor: AppColors.primary,
        side: BorderSide(
          color: AppColors.whiteA700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
