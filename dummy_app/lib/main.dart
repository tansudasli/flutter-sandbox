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
  List<String> products = ['Food Hell'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: products
                .map((element) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/food-post.jpg'),
                            Text(element)
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
          RaisedButton(
              onPressed: () => {},
              child: Text('Add to basket'),
              color: Colors.deepPurpleAccent,
              textColor: Colors.white),
        ],
      ),
    );
  }
}
