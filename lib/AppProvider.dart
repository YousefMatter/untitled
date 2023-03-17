import 'dart:developer';

import 'package:flutter/cupertino.dart';

class AppProvider extends ChangeNotifier{
  bool isDark = false;
  changeIsDark(){
    isDark = !isDark;
    notifyListeners();
  }
  String name='omar';
  String country='palestine';
  String city='Gaza';
  String unuversity='iclamic university';
  changeName(String newName){
    name = newName;

    notifyListeners();

  }

}