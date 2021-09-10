// Flutter imports:
import 'package:flutter/foundation.dart';

class NameService extends ChangeNotifier {
  String _name = '';
  String get getName => _name;

  set setName(String name) {
    _name = name;
    print('notify called');
    notifyListeners();
  }
}
