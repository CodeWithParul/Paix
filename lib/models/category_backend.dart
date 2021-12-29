import 'package:flutter/material.dart';

class CategoryBackend extends StatelessWidget {
  static const routeName = '/category-backend';
  // final String categoryId;
  // final String categoryTitle;
  //
  // CategoryBackend(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(categoryTitle)),
      ),
      body: Center(
        child: Text('The work to be done is here!'),
      ),
    );
  }
}
