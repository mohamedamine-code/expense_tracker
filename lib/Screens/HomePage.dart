import 'package:expense_tracker/Style/Style.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _header(),
          ],
        ),
      ),
    );
  }
  Widget _header(){
    return Text("Welcome To Expense Tracker",textAlign: TextAlign.center,style: mystyle(color: balck, fontWeight: bold, fontSize: 30),);
  }
}