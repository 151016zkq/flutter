import 'package:flutter/material.dart';
import '../pages/categoryModel/categoryModel.dart';
class Num with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    //通知听众，局部刷新weiget
    notifyListeners();
  }
}
//分类页面的交互

class GateroryProvide with ChangeNotifier {
  //选择哪个类别
  LeftGategoryModel leftModel;

  //点击了那个类别
  void selectedModel(){

  }







}


