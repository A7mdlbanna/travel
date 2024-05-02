import '../utils/app_local_storage.dart';

class ThemeRepository {
  static const String appTheme = 'app_theme';

  Future<bool> saveTheme(String theme) async => AppLocalStorage.saveData(key: appTheme, value: theme);

  Future<String?>? getTheme() async => AppLocalStorage.getData(key: appTheme);
}