import 'dart:convert';

import 'package:expense_tracker/Widgets/calender.dart';
import 'package:expense_tracker/Widgets/modelTextfiled.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  TextEditingController price = TextEditingController();
  TextEditingController desc = TextEditingController();

  Future<void> AddExpenseDB(
    double price,
    String description,
    String date,
    String time,
  ) async {
    final url = Uri.parse("http://localhost:5000/add-expense");
    final response = await http.post(
      url,
      headers: {"content-Type": "application/json"},
      body: jsonEncode({
        "price": price,
        "desciption": description,
        "date": date,
        "time": time,
      }),
    );
    if (response.statusCode == 200) {
      print("✅ Expense Added");
    } else {
      print("❌ Error: ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Expense"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              ModelTextField(
                desc: "Enter Price",
                label: "Price :",
                controller: price,
              ),
              const SizedBox(height: 20),
              ModelTextField(
                desc: "Enter Description",
                label: "Description :",
                controller: desc,
              ),
              const SizedBox(height: 25),

              // Date Picker
              Text(
                "Date (DD/MM/YYYY):",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() async {
                      selectedDate = await pickDate(context);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    "Pick a Date",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Time Picker
              Text(
                "Time (Hour : Min AM/PM):",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey.shade800,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () async {
                    setState(() async {
                      selectedTime = await pickTime(context);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  child: const Text(
                    "Pick a Time",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Submit Button
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    AddExpenseDB(
                      double.parse(price.text),
                      desc.text,
                      selectedDate!
                          .toIso8601String(), // Date as ISO string (e.g., "2025-08-25T12:00:00.000Z")
                      "${selectedTime!.hour}:${selectedTime!.minute.toString().padLeft(2, '0')}",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
