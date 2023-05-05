import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
      child: Column(children: [
        Text(expense.title),
        const SizedBox(height: 5),
        Row(
          children: [
            Text('\$${expense.amount.toStringAsFixed(2)}'),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.alarm),
                const SizedBox(
                  width: 4,
                ),
                Text(expense.date.toString())
              ],
            )
          ],
        )
      ]),
    ));
  }
}
