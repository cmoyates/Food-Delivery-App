import 'package:flutter/material.dart';
import '../models/restaurant_categories.dart';
import 'restaurant_category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        separatorBuilder: (context, _) => const SizedBox(width: 8,),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return RestaurantCategoryCard(
            category: restaurantCategories[index]
          ); 
        },
        itemCount: restaurantCategories.length,
      ),
    );
  }
}
