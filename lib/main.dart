import 'package:taskb/models/disease.dart';
import 'package:taskb/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import './screens/disease_detail_screen.dart';
import './screens/category_diseases_screen.dart';
import './screens/tabs_screen.dart';
import './screens/filters_screen.dart';
import './dummy_data.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String,dynamic> _filters ={
    'gluten': false,
    'lactos': false,
    'vegan': false,
    'vegetarian': false,
};
   final List<Disease> _favoriteTest=[];

  void _toggleFavorite(String testId) {
    final existingIndex =
    _favoriteTest.indexWhere((test) => test.id == testId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTest.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTest.add(
          DUMMY_TEST.firstWhere((test) => test.id == testId),
        );
      });
    }
  }
  bool _isFavorite(String id) {
    return _favoriteTest.any((test) => test.id == id);
  }

  List<Disease> _availableTest = DUMMY_TEST;
  void _setFilters(Map<String,dynamic> filterData){
    setState(() {
      _filters = filterData;
      _availableTest = DUMMY_TEST.where((test){
        if(_filters['glucos'] == true && !test.isGlucoseFree){
          return false;
        };
        if(_filters['hypertenson'] == true && !test.isLactoseFree){
          return false;
        };
        if(_filters['cholesterol'] == true && !test.isHypertension){
          return false;
        };
        if(_filters['lactos'] == true && !test.ischolesterol){
          return false;
        };
        return true;
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliCheckUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
        headline5:TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.w500,
        ), ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabsScreen(_favoriteTest),
        CategoryTestScreen.routeName: (ctx) => CategoryTestScreen(_availableTest),
        DiseaseDetailScreen.routeName: (ctx) => DiseaseDetailScreen(_toggleFavorite,_isFavorite),
        FiltersScren.routeName: (ctx)=> FiltersScren(_filters,_setFilters),
      },
      onUnknownRoute: (setting){
        return MaterialPageRoute(builder: (context)=>CategoriesScreen());
      },
    );
  }
}
