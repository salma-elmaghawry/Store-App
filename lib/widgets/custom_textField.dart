import 'package:flutter/material.dart';
import 'package:store_app/helper/constants/const_colors.dart';

class customTextField extends StatelessWidget {
  customTextField(
      {super.key, required this.hint, this.suffixIcon, this.onChange,this.inputType});
  String? hint;
  Icon? suffixIcon;
  final ValueChanged<String>? onChange;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      cursorColor: secColor,
      keyboardType: inputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        suffixIcon: suffixIcon,
        suffixIconColor: secColor,
        hintText: hint,
        hintStyle:
            TextStyle(fontSize: 15, color: Color.fromARGB(255, 156, 155, 155)),
        filled: true,
        fillColor: const Color.fromARGB(255, 224, 224, 221),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(width: 2.0, color: secColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            width: 0.0,
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
