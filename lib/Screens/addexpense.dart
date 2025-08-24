import 'package:expense_tracker/Widgets/calender.dart';
import 'package:expense_tracker/Widgets/modelTextfiled.dart';
import 'package:flutter/material.dart';

class Addexpense extends StatelessWidget {
  const Addexpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Expense"),
        centerTitle: true,
        elevation: 0,
      ),

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                ModelTextField(desc: "Entre Price", label: "Price :"),
                SizedBox(height: 25),
                ModelTextField(desc: "Entre description", label: "Description :"),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "DD/MM/YYYY :",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color.fromARGB(221, 16, 15, 15),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      pickDate(context);
                    },
            
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 28),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      elevation: 4,
                    ),
                    child: const Text(
                      "Pick a Date",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hour : min ( AM / PM ) :",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: const Color.fromARGB(221, 16, 15, 15),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      pickTime(context); // open time picker
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Colors.white,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 28,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                    ),
                    child: const Text(
                      "Pick a Time",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: ElevatedButton(onPressed: (){}, child: Text("Submit"))),
                  SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
