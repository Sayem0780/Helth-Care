import 'package:taskb/models/disease.dart';
import 'package:flutter/material.dart';
import '../widgets/test_item.dart';
class FavoritesScreen extends StatelessWidget {
  List<Disease> favoriteTest;
  FavoritesScreen(this.favoriteTest);

  @override
  Widget build(BuildContext context) {
    if (favoriteTest.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteTest[index].id,
            title: favoriteTest[index].title,
            imageUrl: favoriteTest[index].imageUrl,
            duration: favoriteTest[index].duration,
            affordability: favoriteTest[index].affordability,
            complexity: favoriteTest[index].complexity,
          );
        },
        itemCount: favoriteTest.length,
      );
    }
}}
