import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<List<String>> products; //should be immutable

  Products(this.products); //this gets from global context and stores it

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map((element) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset(element[1]),
                      Text(element[0])
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
