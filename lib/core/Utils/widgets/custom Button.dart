
import 'package:bookly_app/core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  required this.backgroundColor,
    this.borderRadius,
  required this.textColor,
    required this.title,
     this.fontSize,
  });
final Color backgroundColor;
final double? fontSize;
final Color textColor;
final BorderRadius? borderRadius;
final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape :RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(title,style: Styles.textStyle16.copyWith(
            fontSize: fontSize,
              color:textColor,
            fontWeight: FontWeight.w900
          ),)),
    );
  }
}
