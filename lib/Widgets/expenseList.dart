import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5, // number of items
      itemBuilder: (context, index) {
        return _Modelexpense(context);
      },
    );
  }

  Widget _Modelexpense(BuildContext context) {
    DateTime now = DateTime.now();
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "50\$",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(DateFormat("MM/dd/yyyy").format(now),style: Theme.of(context).textTheme.headlineMedium,),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Buy A dinner",
                style:  TextStyle(fontSize: 16, color: Color(0xFF757575)),
              ),
              Text(DateFormat("hh:mm a").format(now),style: Theme.of(context).textTheme.headlineMedium,),
            ],
          ),
        ],
      ),
    );
  }
}
