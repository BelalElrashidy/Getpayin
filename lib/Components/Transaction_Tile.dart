import "package:flutter/material.dart";

class Transaction extends StatelessWidget {
  final String title;
  final String type;
  final double amount;
  final Color color;
  final Widget icon;

  const Transaction(
      {super.key,
      required this.title,
      required this.type,
      required this.amount,
      required this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    final negative = amount.abs();
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          child: icon,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          type,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
        ),
        trailing: Text(amount < 0 ? "-\$$negative" : "\$$amount",
            style: TextStyle(
                color: amount < 0 ? Colors.red : Colors.green,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
