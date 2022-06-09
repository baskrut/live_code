import 'package:task_1/consts.dart';
import 'dart:math';

class ListHelper {
  final List<String> _mocList = [];

  get mocList {
    if (_mocList.isEmpty) {
      generateMocList();
    }
    return _mocList;
  }

  List<String> generateMocList() {
    int k = 0;
    while (k < 2000) {
      _mocList.add(wordList[Random().nextInt(414)].toUpperCase() + ' $k');
      k++;
    }
    return _mocList;
  }

  void addToList() {
    _mocList.insert(0, wordList[Random().nextInt(414)].toUpperCase());
  }
}
