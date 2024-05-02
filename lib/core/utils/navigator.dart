import 'package:flutter/material.dart';


void pop({BuildContext? context}) {
  if(ModalRoute.of(context??navigatorKey.currentContext!)?.isCurrent != true) Navigator.pop(context??navigatorKey.currentContext!);
}
void openDrawer(BuildContext context)=>  Scaffold.of(context).openDrawer();

pushPage(Widget widget, {BuildContext? context}) {
  return Navigator.of(context??navigatorKey.currentContext!).push(
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => widget),
  );
}

void popAllAndPushPage(Widget widget, {BuildContext? context}) {
  Navigator.of(context??navigatorKey.currentContext!).pushAndRemoveUntil(
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => widget),
    (Route<dynamic> route) => false,
  );
}

void popAllAndPushName(
  BuildContext context,
  String widget, {
  RoutePredicate? condition,
  Object? arguments,
}) {
  Navigator.of(context).pushNamedAndRemoveUntil(widget, condition ?? (Route<dynamic> route) => false, arguments: arguments);
}

Future<dynamic> pushName(BuildContext context, String route, {dynamic arguments}) {
  return Navigator.of(context).pushNamed(route, arguments: arguments);
}

Future<dynamic> pushNameForResult(BuildContext context, String route) {
  return Navigator.of(context).pushNamed(route);
}

Future<dynamic> pushNameWithArgumentsForResult(BuildContext context, String route, dynamic argument) {
  return Navigator.of(context).pushNamed(route, arguments: argument);
}

void pushNameWithArguments(BuildContext context, String route, dynamic argument) {
  Navigator.of(context).pushNamed(route, arguments: argument);
}

void dismissKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
  FocusScope.of(context).requestFocus(FocusNode());
}

void pushNameReplacement(BuildContext context, String route, {dynamic arguments}) {
  Navigator.of(context).pushReplacementNamed(route, arguments: arguments);
}

void pushReplacement(Widget widget, {BuildContext? context, dynamic arguments}) {
  Navigator.of(context ?? navigatorKey.currentContext!).pushReplacement(
    MaterialPageRoute<dynamic>(builder: (BuildContext context) => widget),
  );
}

void pushPageRoute<T>(BuildContext context, Route<T> route) {
  Navigator.of(context).push(route);
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
