enum AuthMode { LOGIN, SINGUP }

class AppData {
  static final AppData _appData = new AppData._internal();

  double screenHeight;
  AuthMode authMode;

  factory AppData() {
    return _appData;
  }

  AppData._internal();
}

final appData = AppData();