// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      description: 'Sneakers that make you feel good',
      imagePath: 'images/1.png',
      price: '\$' + '236',
    ),
    Shoe(
      name: 'Air Jordans',
      description: 'Sneakers that make you feel good',
      imagePath: 'images/2.png',
      price: '\$' + '220',
    ),
    Shoe(
      name: 'KD Treys',
      description: 'Sneakers that make you feel good',
      imagePath: 'images/3.png',
      price: '\$' + '240',
    ),
    Shoe(
      name: 'Air Max',
      description: 'Sneakers that make you feel good',
      imagePath: 'images/4.png',
      price: '\$' + '190',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShowList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
