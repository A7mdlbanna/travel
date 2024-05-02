import 'package:fluttertoast/fluttertoast.dart';
import 'package:travel/ui/localization/app_localization.dart';


class AppToast{
  static void toast({required String msg}) => Fluttertoast.showToast(msg: msg.tr);
  static void removeToast() => Fluttertoast.cancel();
}