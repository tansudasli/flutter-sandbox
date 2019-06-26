import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dummy app',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //TODO fetch from REST API
  final List<List<String>> products = [
    ['Food Hell', 'assets/images/food-post.jpg'],
    ['Food Parade', 'assets/images/food-post-2.jpg']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ProductManager(products)
    );
  }
}
