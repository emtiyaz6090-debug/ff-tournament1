import 'package:flutter/material.dart';
import 'payment.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FF Tournament")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("Join Tournament"),
            onPressed: () {},
          ),
          ElevatedButton(
            child: Text("Add Money"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => PaymentScreen()),
              );
            },
          )
        ],
      ),
    );
  }
}
