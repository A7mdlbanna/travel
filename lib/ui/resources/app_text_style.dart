import 'package:flutter/material.dart';
import 'package:travel/ui/helper/index.dart';

import 'app_colors.dart';


class AppTextStyles {
  static TextStyle blackRegular = TextStyle(color: AppColors.black, fontFamily: 'Almarai', fontSize: 22.sp);
  static TextStyle blackMedium = TextStyle(color: AppColors.black, fontFamily: 'Almarai', fontSize: 22.sp, fontWeight: FontWeight.w500);
  static TextStyle blackBold = TextStyle(color: AppColors.black, fontFamily: 'Almarai', fontSize: 22.sp, fontWeight: FontWeight.bold);
  static TextStyle blackExtraBold = TextStyle(color: AppColors.black, fontFamily: 'Almarai', fontSize: 22.sp, fontWeight: FontWeight.w900);

  static TextStyle whiteRegular = TextStyle(color: AppColors.white, fontFamily: 'Almarai', fontSize: 22.sp);
  static TextStyle whiteMedium = TextStyle(color: AppColors.white, fontFamily: 'Almarai', fontSize: 22.sp, fontWeight: FontWeight.w500);
  static TextStyle whiteBold = TextStyle(color: AppColors.white, fontFamily: 'Almarai', fontSize: 22.sp, fontWeight: FontWeight.bold);

  static TextStyle textFieldTitle = TextStyle(color: AppColors.blackLight, fontFamily: 'Almarai', fontSize: 18.67.sp);
  static TextStyle textFieldHint = TextStyle(color: AppColors.gray, fontFamily: 'Almarai', fontSize: 18.67.sp);
}

