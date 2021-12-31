import "package:flutter/material.dart";
import "./transaction.dart";

class transaclist extends StatelessWidget {
  final List<transaction> tra;
  transaclist(this.tra);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tra.map((val) {
        return Card(
          margin: EdgeInsets.all(8),
          elevation: 18,
          shadowColor: Colors.blue,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.purple)),
                  width: 100,
                  child: Text(val.amount,
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
