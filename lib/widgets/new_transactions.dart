import 'package:flutter/material.dart';


class NewTransaction extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }
    addTransaction(
        enteredTitle,
        enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              onSubmitted: (_) => submitData(),
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount'),
              onSubmitted: (_) => submitData(), // has to take in argument we wont use so added an anonymous function
              // onChanged: (value) {
              //   amountInput = value;
              // }
            ),
            FlatButton(
                textColor: Colors.deepPurple,
                onPressed: submitData, //onpressed
                child: Text("Add Transaction"))
          ],
        ),
      ),
    );
  }
}
