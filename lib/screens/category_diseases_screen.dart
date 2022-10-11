import 'package:flutter/material.dart';

import '../widgets/test_item.dart';
import '../dummy_data.dart';
import '../models/disease.dart';

class CategoryTestScreen extends StatefulWidget {
  static const routeName = '/category-meals';
  final List<Disease> availableTest;
  CategoryTestScreen(this.availableTest);

  @override
  _CategoryTestScreenState createState() => _CategoryTestScreenState();
}

class _CategoryTestScreenState extends State<CategoryTestScreen> {
 late String categoryTitle;
  late List<Disease> displayedTest;
  var _loadedInitData = false;

  @override
  void initState() {
    // ...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'] as String;
      final categoryId = routeArgs['id'];
      displayedTest = widget.availableTest.where((test) {//Herw availableMeals is come From the outside of the creatSatae or from widget.That's why we call it like that
        return test.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedTest[index].id,
            title: displayedTest[index].title,
            imageUrl: displayedTest[index].imageUrl,
            duration: displayedTest[index].duration,
            affordability: displayedTest[index].affordability,
            complexity: displayedTest[index].complexity,
            //removeItem: _removeMeal,
          );
        },
        itemCount: displayedTest.length,
      ),
    );
  }
}
