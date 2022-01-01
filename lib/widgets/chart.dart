import 'package:flutter/material.dart';

class chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            width: double.infinity,
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Container(
                        child: Card(),
                        width: 10,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border.all(color: Colors.black, width: 2)))
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.purple)
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.red)
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.red)
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.red)
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.red)
                  ]),
                  Column(children: [
                    Container(
                        child: null, width: 5, height: 80, color: Colors.red)
                  ]),
                ])));
  }
}
