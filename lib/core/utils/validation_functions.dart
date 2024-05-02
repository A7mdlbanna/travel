
import 'package:travel/ui/localization/app_localization.dart';

/// Checks if string is email.
String? validateEmail(String? inputString) {
  if (inputString?.isEmpty??true) {
    return 'Email cannot be empty';
  }

  const pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  final regExp = RegExp(pattern);

  return !regExp.hasMatch(inputString!) ? 'enter_valid_email'.tr : null;
}

/// Checks if string is phone number
String? validatePhone(String? inputString) {

  if (inputString?.isEmpty??true) {
    return 'Phone cannot be empty';
  }

  if (inputString!.length > 16 || inputString.length < 6) return 'enter_valid_phone'.tr;

  const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
  final regExp = RegExp(pattern);

  return !regExp.hasMatch(inputString) ? 'enter_valid_phone'.tr : null;
}

String? validateText(String? inputString, String field){
  return (inputString?.isEmpty??true) ? '${field.tr} ${'cannot_be_empty'.tr}' : null;
}

String? validateUsername(String? inputString) {
  if ((inputString?.length??0) < 3) return 'valid_username_length'.tr;

  const pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{3,}$';
  final regExp = RegExp(pattern);

  return !regExp.hasMatch(inputString??'') ? 'valid_username'.tr : null;
}

String? validatePassword(String? inputString) {

  if (inputString?.isEmpty??true) {
    return '${'lbl_password'.tr} ${'cannot_be_empty'.tr}';
  }

  return inputString!.length < 8 ? 'invalid_password'.tr : null;
}

String? validateConfPassword(String? inputString, bool match) {

  if (inputString?.isEmpty??true) {
    return '${'lbl_password'.tr} ${'cannot_be_empty'.tr}';
  }

  return !match ? 'mismatch'.tr : null;
}
