import 'package:flutter/material.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text(
          "HALAMAN TRANSAKSI",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
