import 'package:flutter/material.dart';
import './transaction.dart';
import './transactionadd.dart';
import './accepttrans.dart';

class usertrans extends StatefulWidget {
  @override
  usertransState createState() => usertransState();
}

class usertransState extends State<usertrans> {
  List<transaction> tra = [
    transaction(amount: "800", Date: "december 2021", title: "shoes"),
    transaction(amount: "500", Date: "november 2021", title: "bag")
  ];
  void update(String title, String amt, String dat) {
    final ne = transaction(title: title, amount: amt, Date: dat);
    setState(() {
      tra.add(ne);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [addTransaction(update), transaclist(tra)]));
  }
}
