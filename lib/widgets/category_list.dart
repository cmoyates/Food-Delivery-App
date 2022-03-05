import 'package:flutter/material.dart';
import '../models/resturant_categories.dart';
import '../widgets/resturant_category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: EdgeInsets.all(8),
        separatorBuilder: (context, _) => SizedBox(width: 8,),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ResturantCategoryCard(
            category: resturantCategories[index]
          ); 
        },
        itemCount: resturantCategories.length,
      ),
    );
  }
}
