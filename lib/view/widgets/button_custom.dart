import 'package:flutter/material.dart';
import 'package:news/shared/styles/colors.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final double fontSize;
  final double widthSize;
  final Function()? onPress;

  const ButtonCustom({
    super.key,
    required this.text,
    required this.onPress,
    this.fontSize = 18,
    this.widthSize = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize,
      child: MaterialButton(
        onPressed: onPress,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(15.0),
        color: AppColors.primaryColor,
        child: Text(
          text,
          style: TextStyle(
            color: AppColors.secondColors,
            fontSize: fontSize,
            letterSpacing: 1,
            //fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
