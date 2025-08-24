import 'package:flutter/material.dart';

Future<void> pickDate(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF4CAF50), // green theme
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
          dialogBackgroundColor: Colors.white,
        ),
        child: child!,
      );
    },
  );

  if (pickedDate != null) {
    // Example: Show the chosen date in a SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Selected Date: ${pickedDate.toString()}")),
    );
  }
}

Future<void> pickTime(BuildContext context) async {
  TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF4CAF50), // green theme
            onPrimary: Colors.white,
            onSurface: Colors.black,
          ),
        ),
        child: child!,
      );
    },
  );

  if (pickedTime != null) {
    // Example: Show selected time in SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Selected Time: ${pickedTime.format(context)}")),
    );
  }
}

