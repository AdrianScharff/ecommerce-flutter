import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Lebron',
        price: '236',
        imagePath: 'lib/images/29-nike-lebron-8-134627554.jpg',
        description:
            'The forward-thinking design of this latest signature shoe.'),
    Shoe(
        name: 'Air Max CB',
        price: '236',
        imagePath: 'lib/images/30-nike-air-max-2-cb-94-134627557.jpg',
        description:
            'You\'ve got the hops and the speed-lace up in shies that enhance'),
    Shoe(
        name: 'Blue sky',
        price: '256',
        imagePath: 'lib/images/nike.jpg',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
    Shoe(
        name: 'Red drain',
        price: '226',
        imagePath: 'lib/images/s-l1200.jpg',
        description:
            'Bouncy cushioning is paired with soft yet supportive foam for res'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
