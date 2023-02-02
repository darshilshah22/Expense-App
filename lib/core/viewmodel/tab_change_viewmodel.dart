import 'package:flutter/foundation.dart';

class TabChangeViewModel extends ChangeNotifier {
  int? _index;

  int? get getIndex => _index;

  void updateIndex(int? value) {
    _index = value;
    notifyListeners();
  }
}