import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:travel/ui/helper/index.dart';

import '../resources/app_colors.dart';


class AppLoading extends StatelessWidget {
  const AppLoading({super.key, this.size});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SpinKitFadingCube(
        color: AppColors.primary,
        size: size ?? 30.sp,
      ),
    );
  }
}
