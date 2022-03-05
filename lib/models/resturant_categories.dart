import 'package:flutter/material.dart';

class ResturantCategory {
  final String label, image;

  ResturantCategory({required this.label, required this.image});
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

List<ResturantCategory> resturantCategories = [
  ResturantCategory(
    label: "Fast Food", 
    image: "assets/images/fast_food.jpg"
  ),
  ResturantCategory(
    label: "Fine Dining", 
    image: "assets/images/fine_dining.jpg"
  ),
  ResturantCategory(
    label: "Cafe", 
    image: "assets/images/cafe.jpg"
  ),
  ResturantCategory(
    label: "Buffet", 
    image: "assets/images/buffet.jpg"
  ),
  ResturantCategory(
    label: "Mexican", 
    image: "assets/images/mexican_food.jpg"
  ),
  ResturantCategory(
    label: "Chinese", 
    image: "assets/images/chinese_food.jpg"
  ),
  ResturantCategory(
    label: "Indian", 
    image: "assets/images/indian_food.jpg"
  ),
  ResturantCategory(
    label: "Pizza", 
    image: "assets/images/pizza.jpg"
  ),
];