import 'package:flutter/cupertino.dart';

class Food {
  final String food;
  final String price;
  int counter;
  final AssetImage image;
  final String serial;

  Food(this.food, this.price, this.counter, this.image, this.serial);
}

List<Food> foods = [
  Food('Veggi tomato mix', '1,900', 0,
      const AssetImage('assets/images/food image one.png'), 'N1,900'),
  Food('Fishwith mix orange...', '1,900', 0,
      const AssetImage('assets/images/food image two.png'), 'N1,900'),
  Food('Veggi tomato mix', '1,900', 0,
      const AssetImage('assets/images/food image one.png'), 'N1,900'),
];
