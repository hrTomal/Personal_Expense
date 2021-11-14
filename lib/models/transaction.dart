import 'package:flutter/foundation.dart';

class Transaction {
  final String txId;
  final String txTitle;
  final int txAmount;
  final DateTime date;

  Transaction(
      {required this.txId,
      required this.txTitle,
      required this.txAmount,
      required this.date});
}
