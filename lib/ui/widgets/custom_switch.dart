import 'package:flutter/cupertino.dart';

import '../resources/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: AppColors.grayDark,
        thumbColor: (value ?? false) ? AppColors.primary : AppColors.whiteA700,
        activeColor: AppColors.primary,
        onChanged: (value) {
          onChange(value);
        },
      );
}
