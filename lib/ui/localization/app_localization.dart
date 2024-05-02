import '../../core/utils/navigator.dart';
import 'locale/ar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class AppLocalizations{
  AppLocalizations(this.locale);
  final Locale locale;

  static AppLocalizations of(){
    return Localizations.of<AppLocalizations>(navigatorKey.currentContext!, AppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {'ar': arEg};
  static const LocalizationsDelegate<AppLocalizations> delegate = AppLocalizationsDelegate();


  static List<String> languages() => _localizedValues.keys.toList();
  String getString(String text) => _localizedValues[locale.languageCode]![text] ?? text;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations>{
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.languages().contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}

extension LocalizationExtension on String {
  String get tr => AppLocalizations.of().getString(this);
}
