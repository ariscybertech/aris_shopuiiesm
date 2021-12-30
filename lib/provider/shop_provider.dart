import 'package:flutter/foundation.dart';
import 'package:shop_ui_ii_example/model/cart_item.dart';

class ShopProvider with ChangeNotifier {
  Map<String, CartItem> _items;

  ShopProvider() {
    _items = {
      '1': CartItem(
        id: '1',
        title: 'Monster Energy Drink ',
        description:
            'Monster Energy is an energy drink that was introduced by Hansen Natural Company in April of 2002. Monster Energy has a 35% share of the energy drink market, the second highest share after Red Bull.',
        price: 30,
        imgUrl: 'assets/monster.png',
        quantity: 1,
        content: '250ml',
      ),
      '2': CartItem(
        id: '2',
        title: 'Mountain Dew',
        description:
            'Mountain Dew is a carbonated soft drink brand produced and owned by PepsiCo. The original formula was invented in 1940 by Tennessee beverage bottlers Barney and Ally Hartman. A revised formula was created by Bill Bridgforth in 1958.',
        price: 15,
        imgUrl: 'assets/mountdew.png',
        quantity: 2,
        content: '300ml',
      ),
    };
  }

  Map<String, CartItem> get items => _items;

  set items(Map<String, CartItem> value) {
    _items = value;
  }

  int get itemCount => _items.length;
}
