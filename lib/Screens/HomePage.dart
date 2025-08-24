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
                _header(),
                SizedBox(height: 30),
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
        Text("Welocme to the Expense Tracker, When you can ",style:mystyle(color: balck,fontSize: 15,fontWeight: FontWeight.normal)),
        SizedBox(height: 5),

        Text("track your dailu, weeklu and monthly,",style:mystyle(color: balck,fontSize: 15,fontWeight: FontWeight.normal)),
        SizedBox(height: 5),

        Text("your expense and be econmic",style:mystyle(color: balck,fontSize: 15,fontWeight: FontWeight.normal)),
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
              Expanded(child: expenseList()),
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
