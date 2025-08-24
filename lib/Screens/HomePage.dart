import 'package:expense_tracker/Style/Style.dart';
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
                _header(),
                SizedBox(height: 20),
                Expanded(child: _TabBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome To Expense Tracker",
          textAlign: TextAlign.center,
          style: mystyle(color: balck, fontWeight: bold, fontSize: 30),
        ),
        SizedBox(height: 20),
        Text("Welocme to the Expense Tracker, When you can "),
        Text("trak your dailu, weeklu and monthly,"),
        Text("your expense and be econmic"),
      ],
    );
  }

  Widget _TabBar() {
    return Column(
      children: [
        TabBar(
          tabs: [
            Tab(text: "Expense List"),
            Tab(text: "Total List"),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              Center(child: Text("1")),
              Text("2"),
            ],
          ),
        ),
        
      ],
    );
  }
}
