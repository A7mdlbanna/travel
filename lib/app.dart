import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel/ui/features/splash_screen.dart';
import 'package:travel/ui/helper/index.dart';
import 'package:travel/ui/localization/app_localization.dart';
import 'core/utils/navigator.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Travel',
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
          ],
          locale: Locale('ar'),
          supportedLocales: [Locale('en'), Locale('ar')],
          home: SplashScreen(),
        );
      },
    );
  }
}
