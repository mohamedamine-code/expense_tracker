import 'package:expense_tracker/Style/Style.dart';
import 'package:expense_tracker/Widgets/expenseList.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _header(context),
                SizedBox(height: 30),
                Expanded(child: _TabBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Welcome To Expense Tracker",
          textAlign: TextAlign.center,
          style: mystyle(color: balck, fontWeight: bold, fontSize: 45),
        ),
        SizedBox(height: 20),
        Text(
          "Welocme to the Expense Tracker, When you can ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: balck),
        ),
        SizedBox(height: 5),

        Text(
          "track your dailu, weeklu and monthly,",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)
        ),
        SizedBox(height: 5),

        Text(
          "your expense and be econmic",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: balck),
        ),

        // SizedBox(height: 25),
      ],
    );
  }

  Widget _TabBar() {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            children: [
              Expanded(child: ExpenseList()),
              Center(child: Text("2")),
            ],
          ),
        ),
        TabBar(
          tabs: [
            Tab(text: "Expense List"),
            Tab(text: "Total List"),
          ],
        ),
      ],
    );
  }
}
