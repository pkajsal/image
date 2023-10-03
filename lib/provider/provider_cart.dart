

import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List _favName = [];
  List _favImg=[];
  List _favUnit=[];
  List _favPrice=[];
  List get favoriteName => _favName;
  List get favoriteImage => _favImg;
  List get favoriteUnit => _favUnit;
  List get favoritePrice => _favPrice;

  void favorites(String name,String image,String unit,int price) {
    final favNameList = _favName.contains(name);
    final favImgList = _favImg.contains(image);
    final favUnitList = _favUnit.contains(unit);
    final favPriceList = _favPrice.contains(price);


    if (favNameList) {
      _favName.remove(name);
      _favImg.remove(image);
      _favPrice.remove(price);




    } else {
      _favName.add(name);
      _favImg.add(image);
      _favPrice.add(price);

    }

    notifyListeners();
  }

  bool icn_change(String icnName) {
    final favIcn = _favName.contains(icnName);
    return favIcn;
  }
}
