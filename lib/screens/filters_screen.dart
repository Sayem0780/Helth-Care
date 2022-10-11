import 'package:taskb/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import 'category_diseases_screen.dart';

class FiltersScren extends StatefulWidget {
  static const routeName = '/filters';
  late final Function saveFilter;
  final Map<String,dynamic> currentFilters;
  FiltersScren(this.currentFilters,this.saveFilter);

  @override
  State<FiltersScren> createState() => _FiltersScrenState();
}

class _FiltersScrenState extends State<FiltersScren> {
  dynamic _isGlucoseFree =false;
  dynamic _isHypertension = true;
  dynamic _ischolesterol =true;
  dynamic _isLactoseFree = true;
  @override
  void initState() {
    _isGlucoseFree = widget.currentFilters['gluten'];
    _isHypertension = widget.currentFilters['lactos'];
    _ischolesterol = widget.currentFilters['vegan'];
    _isLactoseFree = widget.currentFilters['vegetarian'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
        actions: <Widget>[
          IconButton(onPressed: ()
          { final selectedFilters = {
            'gluten': _isGlucoseFree,
            'lactos': _isLactoseFree,
            'vegan': _isHypertension,
            'vegetarian': _ischolesterol,};

          widget.saveFilter(selectedFilters);
          Navigator.of(context).pushNamed('/');
          }, icon: Icon(Icons.save)),
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            //height: 200,
            //width: double.infinity,
            //color: Colors.amber,
            margin: EdgeInsets.symmetric(vertical: 20),
            //padding: EdgeInsets.symmetric(vertical: 20,),
            alignment: Alignment.topCenter,
            child: Text('Adjust Your Test sectoin',style: TextStyle(
              fontSize: 30,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                children: <Widget>[

                  SwitchListTile(
                      title: Text('Glucos Free',style: Theme.of(context).textTheme.headline6,),
                      subtitle: Text('Only Include Glucos Free Diseases',style: Theme.of(context).textTheme.headline5,),
                      value: _isGlucoseFree,
                      onChanged: (newvalue){
                        setState(() {
                          _isGlucoseFree = newvalue;
                        });
                      }),
                  SwitchListTile(
                      title: Text('Lactos-Free',style: Theme.of(context).textTheme.headline6,),
                      subtitle: Text('Only Include Lactos Free Diseases',style: Theme.of(context).textTheme.headline5,),
                      value: _isLactoseFree,
                      onChanged: (newvalue){
                        setState(() {
                          _isLactoseFree = newvalue;
                        });
                      }),
                  SwitchListTile(
                      title: Text('Hyper Tension',style: Theme.of(context).textTheme.headline6,),
                      subtitle: Text('Only Include Hyper Tenson Free Diseases',style: Theme.of(context).textTheme.headline5,),
                      value: _isHypertension,
                      onChanged: (newvalue){
                        setState(() {
                          _isHypertension = newvalue;
                        });
                      }),
                  SwitchListTile(
                      title: Text('Cholesterol',style: Theme.of(context).textTheme.headline6,),
                      subtitle: Text('Only Include Cholesterol Free Diseases',style: Theme.of(context).textTheme.headline5,),
                      value: _ischolesterol,
                      onChanged: (newvalue){
                        setState(() {
                          _ischolesterol = newvalue;
                        });
                      }),
                ],
              )
          )
        ],
      ),
    );
  }
}