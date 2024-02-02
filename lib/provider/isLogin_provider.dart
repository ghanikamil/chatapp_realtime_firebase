import 'package:flutter/widgets.dart';

class IsLoginProvider extends ChangeNotifier{
  bool value;
  IsLoginProvider({this.value = false});
  void changeLogin(){
    value = !value;
    notifyListeners();
  }
}