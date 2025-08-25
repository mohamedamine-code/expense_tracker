import 'package:flutter/material.dart';

class ModelTextField extends StatelessWidget {
  final String label;
  final String desc;
  final TextEditingController controller;

  const ModelTextField({
    required this.controller,
    required this.desc,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label text
        Text(
          label,
          style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: const Color.fromARGB(221, 16, 15, 15),
              ),
        ),
        const SizedBox(height: 8),

        // Styled text field
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: desc,
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

            // Borders
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.grey.shade300,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Color(0xFF4CAF50), // primary green
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
