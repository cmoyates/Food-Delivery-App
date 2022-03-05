import 'package:flutter/material.dart';

class RestaurantCategory {
  final String label, image;

  RestaurantCategory({required this.label, required this.image});
}

const List<String> categories = [
  "Fast Food",
  "Fine Dining",
  "Cafe",
  "Buffet",
  "Mexican",
  "Chinese",
  "Indian",
  "Pizza",
];

List<RestaurantCategory> restaurantCategories = [
  RestaurantCategory(
    label: "Fast Food", 
    image: "assets/images/fast_food.jpg"
  ),
  RestaurantCategory(
    label: "Fine Dining", 
    image: "assets/images/fine_dining.jpg"
  ),
  RestaurantCategory(
    label: "Cafe", 
    image: "assets/images/cafe.jpg"
  ),
  RestaurantCategory(
    label: "Buffet", 
    image: "assets/images/buffet.jpg"
  ),
  RestaurantCategory(
    label: "Mexican", 
    image: "assets/images/mexican_food.jpg"
  ),
  RestaurantCategory(
    label: "Chinese", 
    image: "assets/images/chinese_food.jpg"
  ),
  RestaurantCategory(
    label: "Indian", 
    image: "assets/images/indian_food.jpg"
  ),
  RestaurantCategory(
    label: "Pizza", 
    image: "assets/images/pizza.jpg"
  ),
];