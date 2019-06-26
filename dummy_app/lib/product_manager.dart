import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final List<List<String>> initialProducts;

  ProductManager(this.initialProducts);

  @override
  State<StatefulWidget> createState() {
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<List<String>> products = [];

  @override
  void initState() {
    widget.initialProducts.forEach((product) => products.add(product));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
