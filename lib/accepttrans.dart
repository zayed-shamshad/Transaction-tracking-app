import "package:flutter/material.dart";

class addTransaction extends StatelessWidget {
  String tle;
  String amt;
  final Function fnc;
  addTransaction(this.fnc);
  @override
  Widget build(BuildContext context) {
    final textcont = TextEditingController();
    final amtcont = TextEditingController();
    return Container(
        width: double.infinity,
        child: Column(children: [
          Container(
              width: double.infinity,
              child: Card(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                          decoration: InputDecoration(labelText: "title"),
                          controller: textcont),
                      TextField(
                          decoration: InputDecoration(labelText: "amount"),
                          controller: amtcont),
                      FlatButton(
                          onPressed: (() {
                            fnc(textcont.text, amtcont.text, "dec 2021");
                          }),
                          child: Text("Add transaction"),
                          color: Colors.white)
                    ]),
                color: Colors.white,
              ))
        ]));
  }
}
