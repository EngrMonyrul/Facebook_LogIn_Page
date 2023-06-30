import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FavItem with ChangeNotifier{
  List<int> favItems = [];

  List get favItemsValues => favItems;

  void setFavItem(index){
    favItems.add(index);
  }

  void removeFavItem(index){
    favItems.remove(index);
  }
}