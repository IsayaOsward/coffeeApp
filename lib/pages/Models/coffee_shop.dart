import 'package:coffee/pages/Models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(name: 'Long Black', price: '\$50', imagePath: 'images/coffee.png'),

    //latte coffee
    Coffee(name: "Latte", price: '\$60', imagePath: 'images/latte.png'),

    //espresso
    Coffee(name: 'Espresso', price: '\$30', imagePath: 'images/espresso.png'),

    //iced
    Coffee(name: 'Iced Coffee', price: '\$70', imagePath: 'images/ice-coffee.png'),
  ];
  //user cart
  List<Coffee> _userCart = [];


  CoffeeShop()
  {
    coffeeShop=_shop;
  }
  //get coffee list
  List<Coffee> coffeeShop = [];

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemtoCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void deleteFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
