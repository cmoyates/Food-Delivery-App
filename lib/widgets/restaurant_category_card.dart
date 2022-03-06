import 'package:flutter/material.dart';
import '../models/restaurant_categories.dart';

class RestaurantCategoryCard extends StatelessWidget {
  const RestaurantCategoryCard({Key? key, required this.category}) : super(key: key);

  final RestaurantCategory category;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          AspectRatio(
            aspectRatio: 4/3,
            child: Image.asset(
              category.image,
              fit: BoxFit.cover,
            )
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: Ink(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter
                  )
                ),
                child: InkWell(
                  onTap: ()=>{},
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
              left: 8
            ),
            child: Text(
              category.label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
          )
        ],
        
      ),
    );
  }
}