
import 'package:flutter/cupertino.dart';

class TextFieldProvider extends ChangeNotifier{
  String? value;
  TextEditingController textController = TextEditingController();
  
  void changValue(String v){
    // ignore: avoid_print
    print(textController.text);
    notifyListeners();
  }
}