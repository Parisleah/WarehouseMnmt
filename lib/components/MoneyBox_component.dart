import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Build Prototype Container

class MoneyBox extends StatelessWidget {
  Color amountFontColor;
  String title;
  double amount;
  Color color;
  double size;

  MoneyBox(
      this.title, this.amount, this.color, this.size, this.amountFontColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      padding: const EdgeInsets.all(20.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(22)),
      height: size,
      child: Column(children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Expanded(
          child: Text(
            '${NumberFormat("#,###.##").format(amount)} ฿',
            style: TextStyle(
                fontSize: 30,
                color: amountFontColor,
                fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
