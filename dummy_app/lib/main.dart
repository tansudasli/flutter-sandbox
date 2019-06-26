import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<List<String>> products = [['Food Hell', 'assets/images/food-post.jpg'],
                                 ['Food Parade', 'assets/images/food-post-2.jpg']];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
              onPressed: () {
                setState(() => products.add(['Food Crash', 'assets/images/food-post-3.jpg']));
              },
              child: Text('Add products'),
              color: Colors.deepPurpleAccent,
              textColor: Colors.white),
          Column(
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
          ),
        ],
      ),
    );
  }
}
