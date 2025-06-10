
import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: TextField(
        cursorColor: kPrimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: color ?? Colors.white)
        );
  }
}