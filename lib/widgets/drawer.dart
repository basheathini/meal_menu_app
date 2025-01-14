import 'package:flutter/material.dart';
import '../views/filters_screen.dart';
class MainDrawer extends StatelessWidget {

  Widget buildListTile(String title, IconData iconData, Function handler){
    return ListTile(
      leading: Icon(iconData, size: 26,),
      title: Text(title, style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24, fontWeight: FontWeight.bold),),
      onTap: handler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(
      children: <Widget>[
        Container(
          height: 320,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text('Cooking up!', style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Theme.of(context).primaryColor
          ),),
        ),
        SizedBox(height: 20,),
        buildListTile('Meals', Icons.restaurant, (){
          Navigator.of(context).pushReplacementNamed('/');
        }),
        buildListTile('Filters', Icons.settings, (){
          Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          
        }),

      ],
    ),);
  }
}
