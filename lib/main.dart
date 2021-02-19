import './transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: "t1",
      amount: 69.99,
      date: DateTime.now(),
      title: "New Shoes",
    ),
    Transaction(
      id: "t2",
      amount: 59.99,
      date: DateTime.now(),
      title: "New something",
    ),
    Transaction(
      id: "t3",
      amount: 49.99,
      date: DateTime.now(),
      title: "New something else",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Container(
                width: double.infinity,
                height: 25,
                color: Colors.deepPurpleAccent,
                child: Text('CHART!')),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        tx.amount.toString(),
                      ),
                    ),
                    Column(children: <Widget>[
                      Text(tx.title),
                      Text(tx.date.toString()),
                    ],)
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
