import 'package:flutter/material.dart';
import 'package:flutter_basic_app2/widgets/transactionadd.dart';
//import 'widgets/chart.dart';
import 'model/transaction.dart';
import 'widgets/accepttrans.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  MyappState createState() => MyappState();
}

class MyappState extends State<Myapp> {
  @override
  final List<transaction> tra = [
    transaction(amount: 800.00, Date: "december 2021", title: "shoes"),
    transaction(amount: 500.00, Date: "november 2021", title: "bag")
  ];
  void update(String title, double amt, String dat) {
    final ne = transaction(title: title, amount: amt, Date: dat);
    setState(() {
      tra.add(ne);
    });
  }

  void startTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return addTransaction(update);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("MY 3rd app"), actions: [
          Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      startTransaction(context);
                    },
                  ))
        ]),
        body: SingleChildScrollView(
            child: Column(children: [
          // Container(width: double.infinity, child: chart()),
          transaclist(tra)
        ])),
        floatingActionButton: Builder(
            builder: (context) => FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    startTransaction(context);
                  },
                )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
