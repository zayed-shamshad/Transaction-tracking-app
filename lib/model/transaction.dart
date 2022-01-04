import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class transaction {

  final double amount;
  final String title;
  DateTime dat;
  String id;
  transaction(
      {@required this.amount,
      @required this.title,
      @required this.dat,
      @required this.id});
}
