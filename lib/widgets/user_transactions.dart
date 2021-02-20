import '../widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './new_transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      amount: 69.99,
      date: DateTime.now(),
      title: "New Shoes",
    ),
    Transaction(
      id: "t2",
      amount: 59.99,
      date: DateTime.now(),
      title: "New something",
    ),
    Transaction(
      id: "t3",
      amount: 49.99,
      date: DateTime.now(),
      title: "New something else",
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
