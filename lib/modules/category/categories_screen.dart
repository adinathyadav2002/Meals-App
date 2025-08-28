import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_app/common/widgets/category_grid_item.dart';
import 'package:meal_app/data/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Pick your category")),
      body: GridView(
        padding: EdgeInsets.all(24),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // availableCategories.map((category){
          //   return CategoryGridItem(category: category)
          // }).toList(),
          for (final category in availableCategories)
            CategoryGridItem(category: category),
        ],
      ),
    );
  }
}
