import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel/ui/resources/app_text_style.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    Key? key,
    this.formKey,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readOnly = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator, this.formatters, this.onTap, this.onChanged, this.borderColor, this.borderRadius,
  }) : super(
          key: key,
        );

  final GlobalKey<FormState>? formKey;

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool obscureText;

  final bool readOnly;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? borderColor;

  final double? borderRadius;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? formatters;
  final void Function()? onTap;
  final void Function(String value)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  
  bool obscure = false;
  @override
  void initState() {
    obscure = widget.obscureText;
    super.initState();
  }
  
  changeObscure(){
    obscure = !obscure;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: widget.width ?? double.maxFinite,
        child: Form(
          key: widget.formKey,
          child: TextFormField(
            onTap: widget.onTap,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscuringCharacter: '☘',
            controller: widget.controller,
            focusNode: widget.focusNode,
            autofocus: widget.autofocus!,
            style: widget.textStyle ?? AppTextStyles.textFieldTitle,
            obscureText: obscure,
            textInputAction: widget.textInputAction,
            keyboardType: widget.textInputType,
            maxLines: widget.maxLines ?? 1,
            decoration: decoration,
            validator: widget.validator,
            inputFormatters: widget.formatters,
            readOnly: widget.readOnly,
            onChanged: widget.onChanged,
          ),
        ),
      );

  InputDecoration get decoration => InputDecoration(
    hintText: widget.hintText ?? "",
    hintStyle: widget.hintStyle ?? AppTextStyles.textFieldHint,
    prefixIcon: widget.prefix,
    prefixIconConstraints: widget.prefixConstraints,
    suffixIcon: widget.obscureText ? GestureDetector(onTap: changeObscure, child: Icon(obscure ? Icons.visibility_off : Icons.visibility)) : widget.suffix,
    suffixIconConstraints: widget.suffixConstraints,
    contentPadding: widget.contentPadding ?? EdgeInsets.all(10.r),
    fillColor: widget.fillColor,
    filled: widget.filled,
    errorMaxLines: 2,
  );
}
