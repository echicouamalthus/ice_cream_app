import 'package:flutter/material.dart';
import 'package:ice_cream_app/Models/Ice_Cream.dart';

class iCeCreamCard extends ChangeNotifier {
  final List<iceCream> _cream = [
    iceCream(
        name: "Strawberry",
        price: "4.00",
        imagpath: "images/3d-casual-life-strawberry-ice-cream-moskup 1.png"),
    iceCream(
        name: "Cream & Strawberry",
        price: "4.00",
        imagpath: "images/3d-casual-life-strawberry-ice-cream-moskup 1.png"),
    iceCream(
        name: "Woolly",
        price: "4.00",
        imagpath: "images/3d-casual-life-strawberry-ice-cream-moskup 1.png"),
    iceCream(
        name: "Choco",
        price: "4.00",
        imagpath: "images/3d-casual-life-strawberry-ice-cream-moskup 1.png")
  ];

  final List<iceCream> _cart = [];

  List<iceCream> get getCream => _cream;

  List<iceCream> get getCart => _cart;

  void addtoCart(iceCream iceCream) {
    getCart.add(iceCream);
    notifyListeners();
  }

  void removeFromCart(iceCream iceCream) {
    getCart.remove(iceCream);
    notifyListeners();
  }
}
