import 'package:flutter/material.dart';
import 'package:store_app/helper/constants/const_colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed; // Changed to VoidCallback

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: secColor,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed, // Use the VoidCallback here
      child: Text(
        title,
        style: TextStyle(
          fontSize: 19,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
