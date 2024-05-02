import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/core/utils/navigator.dart';
import 'package:travel/ui/helper/index.dart';
import 'package:travel/ui/localization/app_localization.dart';
import '../resources/index.dart';

class AppDialogs {
  static void showErrorDialog(BuildContext context, {
    String error = 'there_was_an_error',
    String okText = 'try_again',
    bool dismissible = true,
    canPop = true,
    void Function()? onOkTap
  }) {
    AwesomeDialog(
      context: context,
      animType: AnimType.bottomSlide,
      padding: EdgeInsets.zero,
      dialogBackgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Text(error.tr, style: AppTextStyles.blackRegular),
      ),
      btnOkHeight: 30.h,
      btnOkText: okText.tr,
      btnOkColor: AppColors.primary,
      btnOkOnPress: onOkTap ?? () => canPop ? pop() : (){} /*popAllAndPushPage(LoginScreen())*/,
      dialogType: DialogType.error,
      dismissOnBackKeyPress: dismissible,
      dismissOnTouchOutside: dismissible,
    ).show();
  }


  static Future<void> showDialog(BuildContext context, {
    String? okText,
    bool dismissible = true,
    void Function()? onOkTap,
    Widget? body
  }) async{
    await AwesomeDialog(
      context: context,
      animType: AnimType.bottomSlide,
      padding: EdgeInsets.zero,
      outterPadding: EdgeInsets.symmetric(horizontal: 20.w),
      bodyHeaderDistance: 0.0,
      dialogBackgroundColor: AppColors.black,
      body: body,
      btnOkText: okText?.tr,
      btnOkColor: AppColors.primary,
      btnOkOnPress: onOkTap,
      dialogType: DialogType.noHeader,
      dismissOnBackKeyPress: dismissible,
      dismissOnTouchOutside: dismissible,
    ).show();
  }
}
