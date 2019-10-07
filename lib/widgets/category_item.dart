import 'package:flutter/material.dart';
import '../views/category_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id,this.title, this.color);
  
//  void selectedCategory( BuildContext con){
//    Navigator.of(con).push(MaterialPageRoute(builder: (_) {
//      return CategoryMealsScreen(id, title);
//    }));
//
//  }

  void selectedCategory( BuildContext con){
    Navigator.of(con).pushNamed(
        CategoryMealsScreen.routeName,
        arguments: {
          'id': id,
          'title': title,
    },);
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                color.withOpacity(1),
                color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),

        ),
      ),
    );
  }
}
