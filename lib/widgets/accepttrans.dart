import "package:flutter/material.dart";

class addTransaction extends StatefulWidget {
  final Function fnc;
  addTransaction(this.fnc);

  @override
  State<addTransaction> createState() => addTransactionState();
}

class addTransactionState extends State<addTransaction> {
  String tle;

  double amt;

  final textcont = TextEditingController();

  final amtcont = TextEditingController();

  void submit() {
    final titl = textcont.text;
    final amt = double.parse(amtcont.text);
    if (titl.isEmpty || amt < 0) {
      return;
    }
    widget.fnc(titl, amt, "dec 2021");
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
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
                        controller: textcont,
                        onSubmitted: (_) => submit(),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: "amount"),
                        keyboardType: TextInputType.number,
                        controller: amtcont,
                        onSubmitted: (_) => submit(),
                      ),
                      FlatButton(
                        onPressed: submit,
                        child: Text("Add transaction"),
                        color: Colors.white,
                      )
                    ]),
                color: Colors.white,
              ))
        ]));
  }
}
