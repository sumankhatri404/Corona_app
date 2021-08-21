import 'package:flutter/foundation.dart';

class LanguageProvider extends ChangeNotifier {
  bool _isNepali = true;

  bool get isNepali {
    return _isNepali;
  }

  updateLanguage() {
    _isNepali = !_isNepali;
    notifyListeners();
  }
}
