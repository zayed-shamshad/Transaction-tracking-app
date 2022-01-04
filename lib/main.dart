import 'package:flutter/material.dart';
import './widgets/transactionadd.dart';
//import 'widgets/chart.dart';
import 'model/transaction.dart';
import 'widgets/accepttrans.dart';
import 'package:intl/intl.dart';

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
    /* transaction(
        amount: 800.00,
        dat: DateTime.now(),
        title: "shoes",
        id: DateFormat.yMd().format(DateTime.now())),
    transaction(
      amount: 500.00,
      dat: DateTime.now(),
      title: "bag",
      id: DateFormat.yMd().format(DateTime.now()),
    )
  */
  ];
  void update(String title, double amt, DateTime d) {
    final ne = transaction(
        title: title,
        amount: amt,
        id: DateFormat.yMMMd().format(DateTime.now()),
        dat: d);
    setState(() {
      tra.add(ne);
    });
  }

  void del(String idc) {
    setState(() {
      tra.removeWhere((tx) => tx.id == idc);
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
      theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.amber),
      // textTheme:ThemeData.light().textTheme ),
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              tra.length == 0
                  ? Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/waiting.png',
                        height: 150,
                        width: 100,
                      ))
                  :
                  // Container(width: double.infinity, child: chart()),
                  transaclist(tra, del)
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
