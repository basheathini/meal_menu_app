import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();

}
class _FiltersScreenState extends State<FiltersScreen>{

  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your filters'),),
//      drawer: MainDrawer(),

      body: Column(children: <Widget>[
        Container(padding: EdgeInsets.all(20),
          child: Text('Adjust your meal selection.',
            style: Theme.of(context).textTheme.title,),
        ),
        Expanded(
          child: ListView(children: <Widget>[
            SwitchListTile(
              title: Text('Gluten-free'),
              value: _glutenFree,
              subtitle: Text('Only include gluten-free meals'),
              onChanged: (newValue){
                setState(() {
                  _glutenFree = newValue;
                });
              },
            )
          ],),
        )
      ],)
    );
  }
}
