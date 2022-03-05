import 'package:flutter/material.dart';
import '../models/resturant_categories.dart';

class RestaurantCategoryCard extends StatelessWidget {
  const RestaurantCategoryCard({Key? key, required this.category}) : super(key: key);

  final RestaurantCategory category;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        AspectRatio(
          aspectRatio: 4/3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              category.image,
              fit: BoxFit.cover,
            ),
          )
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
          ),
          child: Text(
            category.label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
        )
      ],
      
    );
  }
}