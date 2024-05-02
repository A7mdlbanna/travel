import '../utils/app_local_storage.dart';

class AuthRepository{
  final String _sharedPreferenceToken = "Token";
  final String _sharedPreferenceFirstTime = "FirstTime";
  String? get accessToken => _getToken();

  Future<void> setToken(String? userToken) async {
    if(userToken == null) return;
    await AppLocalStorage.saveData(key: _sharedPreferenceToken, value: userToken);
  }

  String? _getToken() {
    return AppLocalStorage.getData(key: _sharedPreferenceToken);
  }

  Future<void> removeToken() async {
    await AppLocalStorage.removeData(_sharedPreferenceToken);
  }

  bool get isFirstTime => AppLocalStorage.getData(key: _sharedPreferenceFirstTime) ?? true;

  Future<void> setFirstTime(bool isFirst) async {
    await AppLocalStorage.saveData(key: _sharedPreferenceFirstTime, value: isFirst);
  }
}