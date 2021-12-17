

import 'package:flutter/foundation.dart';

class BottomBarProvider extends ChangeNotifier{

  int index = 0;


  void changeIndex(i) {

    index = i;
    notifyListeners();

  }
}