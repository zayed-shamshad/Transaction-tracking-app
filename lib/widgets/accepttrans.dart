import "package:flutter/material.dart";
import 'package:intl/intl.dart';

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
  DateTime datechose;
  void submit() {
    final titl = textcont.text;
    final amt = double.parse(amtcont.text);

    if (titl.isEmpty || amt < 0 || datechose == null) {
      return;
    }
    widget.fnc(titl, amt, datechose);
    Navigator.of(context).pop();
  }

  void datechosen() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickeddate) {
      if (pickeddate == null) {
        return;
      }
      setState(() {
        datechose = pickeddate;
      });
    });
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
                      Row(children: [
                        Text(datechose == null
                            ? "No date has been chosen!"
                            : DateFormat.yMd().format(datechose)),
                        FlatButton(
                            onPressed: () {
                              datechosen();
                            },
                            child: Text("Choose a date"))
                      ]),
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
