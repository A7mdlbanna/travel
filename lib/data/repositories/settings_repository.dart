import '../utils/app_local_storage.dart';

class SettingsRepository{
  static const String languageKey = 'language';
  static const String notificationKey = 'notification';
  static const String soundKey = 'sound';

  static Future<bool> saveLang(String language) async => AppLocalStorage.saveData(key: languageKey, value: language);
  static String get getLang => AppLocalStorage.getData(key: languageKey)??'en';

  static Future<bool> saveNotification(bool notification) async => AppLocalStorage.saveData(key: notificationKey, value: notification);
  static bool get notification => AppLocalStorage.getData(key: notificationKey)??false;

  static Future<bool> saveSound(bool sound) async => AppLocalStorage.saveData(key: soundKey, value: sound);
  static bool get sound => AppLocalStorage.getData(key: soundKey)??true;
}