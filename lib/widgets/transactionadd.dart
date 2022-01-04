import "package:flutter/material.dart";
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class transaclist extends StatelessWidget {
  final List<transaction> tra;
  final Function del;
  transaclist(this.tra, this.del);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tra.map((val) {
        return Card(
          margin: EdgeInsets.all(6),
          elevation: 5,
          shadowColor: Colors.blue,
          color: Colors.white,
          child: ListTile(
              leading: CircleAvatar(
                  radius: 28,
                  child: Text(val.amount.toStringAsFixed(2),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ))),
              title: Container(
                  child: Card(
                      child: Text(val.title,
                          style: TextStyle(color: Colors.black))),
                  width: 100),
              subtitle: Container(
                  child: Card(
                      child: Text(DateFormat.yMd().format(val.dat),
                          style: TextStyle(color: Colors.grey))),
                  width: 100),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  del(val.id);
                },
                color: Colors.red,
              )),
        );
      }).toList(),
    );
  }
}
