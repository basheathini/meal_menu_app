import 'package:flutter/material.dart';
import '../views/favorites_screen.dart';
import '../views/categories_screens.dart';
import '../widgets/drawer.dart';
import '../models/meal.dart';

class TabsBottomScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsBottomScreen(this.favoriteMeals);

  @override
  _TabsBottomScreenState createState() => _TabsBottomScreenState();
}

class _TabsBottomScreenState extends State<TabsBottomScreen> {

  List<Map<String, Object>> _pages;

  int _selectedPageIndex = 0;

  void _selectedPage(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }
  @override
  void initState() {
    _pages = [
      {'page' : CategoriesScreen(), 'title': 'Categories'},
      {'page' : FavoritesScreen(widget.favoriteMeals), 'title' : 'Favorites'}
    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
//        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Categories')),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),

          )
        ],
      ),
    );
  }
}
