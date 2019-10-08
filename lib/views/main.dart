import 'package:flutter/material.dart';
import '../views/meal_detail_screen.dart';
import '../views/categories_screens.dart';
import '../views/category_meals_screen.dart';
import '../views/tabs.dart';
import '../views/tabs_bottom.dart';
import '../views/filters_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 0.5),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
          ),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )
        )
      ),
//      home: CategoriesScreen(),
    initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => TabsBottomScreen(),
        CategoryMealsScreen.routeName : (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName : (context) => MealDetailScreen(),
        FiltersScreen.routeName: (context) => FiltersScreen()
      },
      //for screens or routes that are not defined, automatically goes to this.
//      onGenerateRoute: (settings){
//        print(settings.arguments);
//        return MaterialPageRoute(builder: (context) => CategoriesScreen());
//      },
//      onUnknownRoute: (settings){
//        return MaterialPageRoute(builder: (context) => CategoriesScreen());
//
//      },
    );
  }
}
