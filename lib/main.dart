import 'package:flutter/material.dart';
import './usertransa.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("MY 3rd app"),
                actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))]),
            body: SingleChildScrollView(
                child: Column(
                    children: [Card(child: Text("card 0")), usertrans()]))));
  }
}
