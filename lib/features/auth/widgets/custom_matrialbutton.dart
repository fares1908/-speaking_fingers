import 'package:flutter/material.dart';
import 'package:speaking_fingers/core/theming/colors.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.textButton, this.onPressed});
  final String textButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return      Container(
      decoration: BoxDecoration(
        color: AppColors.themeColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: MaterialButton(
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.themeColor,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 45,
          minWidth: MediaQuery.of(context).size.width * 0.9,
          onPressed: onPressed,
          child: Text(
            textButton,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}