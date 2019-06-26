import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<List<String>> products = [
    ['Food Hell', 'assets/images/food-post.jpg'],
    ['Food Parade', 'assets/images/food-post-2.jpg']
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(
            onPressed: () {
              setState(() =>
                  products.add(['Food Crash', 'assets/images/food-post-3.jpg']));
            },
            child: Text('Add products'),
            color: Colors.deepPurpleAccent,
            textColor: Colors.white),
      Products(products)],
    );
  }
}
