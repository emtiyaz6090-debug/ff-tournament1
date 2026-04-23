import 'package:flutter/material.dart';
import 'dart:math';

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final amount = TextEditingController();
  final number = TextEditingController();
  String method = "bKash";

  String generateTXN() {
    return "TXN" + Random().nextInt(999999).toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Send Money")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButton<String>(
              value: method,
              items: ["bKash", "Nagad", "Rocket"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) {
                setState(() => method = v!);
              },
            ),
            TextField(controller: number, decoration: InputDecoration(labelText: "Receiver: 01631756511")),
            TextField(controller: amount, decoration: InputDecoration(labelText: "Amount")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String txn = generateTXN();

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text("Transaction Created"),
                    content: Text("TXN: $txn\nStatus: PENDING\nWaiting admin approval"),
                  ),
                );

                print({
                  "txnId": txn,
                  "method": method,
                  "number": number.text,
                  "amount": amount.text,
                  "status": "PENDING"
                });
              },
              child: Text("Send Money"),
            )
          ],
        ),
      ),
    );
  }
}
