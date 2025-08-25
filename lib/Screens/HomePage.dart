import 'package:expense_tracker/Screens/addexpense.dart';
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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=>AddExpense()));
          },
          child: Icon(Icons.add,color: Colors.white,),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Welcome To Expense Tracker",
          textAlign: TextAlign.center,
          style: mystyle(color: balck, fontWeight: bold, fontSize: 45),
        ),
        // SizedBox(height: 20),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 7),
        //   padding: EdgeInsets.all(12),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        //   child: Text(
        //     "Welcome to the Expense Tracker, When you can track your daily, weekly and monthly,your expense and be economic",
        //     textAlign: TextAlign.start,
        //     style: TextStyle(
        //       fontSize: 20,
        //       fontWeight: FontWeight.w600,
        //       color: Colors.black, // or use your variable 'balck'
        //     ),
        //   ),
        // ),

        // SizedBox(height: 25),
      ],
    );
  }

  Widget _TabBar() {
    return Column(
      children: [
        TabBar(
          // indicator: BoxDecoration(),
          indicatorColor: Colors.black,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
          tabs: [
            Tab(text: "Expense List"),
            Tab(text: "Total List"),
          ],
        ),
        SizedBox(height: 11),
        Expanded(
          child: TabBarView(
            children: [
              Expanded(child: ExpenseList()),
              Center(child: Text("2")),
            ],
          ),
        ),
      ],
    );
  }
}
