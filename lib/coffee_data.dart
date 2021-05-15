import 'package:flutter/material.dart';
import 'coffe_model.dart';


// ignore: non_constant_identifier_names
List<Coffee> _coffee_list = [
  Coffee(
    name: "Espresso",
    image: "assets/images/espresso.png",
    backgroundColor: Color(0xff65C5B2),
    price: 5,
  ),
  Coffee(
    name: "Cafe Mocha",
    image: "assets/images/mocha.png",
    backgroundColor: Color(0xffFFAEF2),
    price: 11,
  ),
  Coffee(
    name: "Caramel Macchiato",
    image: "assets/images/caramel-macchiato.png",
    backgroundColor: Color(0xffFF9839),
    price: 7,
  ),
  Coffee(
    name: "Iced Coffee Latte",
    image: "assets/images/late.png",
    backgroundColor: Color(0xffB68456),
    price: 4,
  ),
  Coffee(
    name: "Cappuccino",
    image: "assets/images/cappuccino.png",
    backgroundColor: Color(0xffE74343),
    price: 9,
  ),
  Coffee(
    name: "Frappuccino",
    image: "assets/images/frappuccino.png",
    backgroundColor: Color(0xff56B670),
    price: 12,
  ),
  Coffee(
    name: "Buffalo Burger",
    image: "assets/images/burger.png",
    backgroundColor: Color(0xff8D5FDC),
    price: 8,
  ),
  Coffee(
    name: "Cake Coffee",
    image: "assets/images/cake-coffee.png",
    backgroundColor: Color(0xff5FBFDC),
    price: 15,
  ),
];

// ignore: non_constant_identifier_names
List<Coffee> get coffee_list {
  return [..._coffee_list];
}