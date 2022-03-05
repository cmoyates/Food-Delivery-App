import 'package:flutter/material.dart';
import '../models/resturant_categories.dart';

class ResturantCategoryCard extends StatelessWidget {
  const ResturantCategoryCard({Key? key, required this.category}) : super(key: key);

  final ResturantCategory category;

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
        Transform.scale(
          scale: 0.8,
          child: Chip(
            label: Text(category.label),
          ),
        ),
      ],
      
    );
  }
}