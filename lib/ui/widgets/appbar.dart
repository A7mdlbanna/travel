import 'package:flutter/material.dart';
import 'package:travel/core/utils/navigator.dart';
import 'package:travel/ui/helper/index.dart';
import 'package:travel/ui/localization/app_localization.dart';
import 'package:travel/ui/widgets/app_text_display.dart';

import '../resources/app_images_path.dart';
import '../resources/app_text_style.dart';
import 'custom_image_view.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  MyAppBar({super.key, required this.title, this.action, this.message = false, this.share = false});

  final String title;
  final Widget? action;
  final bool message;
  final bool share;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      bottom: AppBar(
        automaticallyImplyLeading: false,
        leading: CustomImageView(color: Colors.white, imagePath: AppImages.back, onTap: pop, margin: EdgeInsets.all(15.r)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        title: AppText(text: title.tr, style: AppTextStyles.whiteBold, size: 30.sp),
        actions: [
          action??CustomImageView(imagePath: AppImages.notification, onTap: () {/*pushPage(NotificationScreen())*/}, margin: EdgeInsets.all(15.r))
        ],
      ),
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}
