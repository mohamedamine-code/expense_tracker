import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class expenseList extends StatelessWidget {
  const expenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _Modelexpense();
      },
    );
  }
  Widget _Modelexpense(){
    DateTime now =DateTime.now(); 
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("50\$"),
            Text(DateFormat("MM/dd/yyyy").format(now)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Buy A dinner"),
            Text(DateFormat("hh:mm a").format(now)),
          ],
        ),
      ],
    );
  }
}
