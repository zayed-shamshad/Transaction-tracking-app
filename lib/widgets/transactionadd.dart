import "package:flutter/material.dart";
import '../model/transaction.dart';

class transaclist extends StatelessWidget {
  final List<transaction> tra;
  transaclist(this.tra);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tra.map((val) {
        return Card(
          margin: EdgeInsets.all(6),
          elevation: 5,
          shadowColor: Colors.blue,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple, width: 4)),
                  width: 100,
                  height: 30,
                  padding: EdgeInsets.all(4),
                  child: Text(val.amount.toStringAsFixed(2),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ))),
              Column(children: [
                Container(child: Card(child: Text(val.title)), width: 100),
                Container(child: Card(child: Text(val.Date)), width: 100)
              ])
            ],
          ),
        );
      }).toList(),
    );
  }
}
