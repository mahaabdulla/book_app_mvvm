import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomeBottom extends StatelessWidget {
  const CustomeBottom({super.key, 
  required this.backgroundColor,
  required this.text,
  required this.textColor,
   this.borderRadius
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius?? BorderRadius.circular(20))),
        onPressed: () {},
        child: Text(text, style: Styles.textStyle14.copyWith(color:textColor ),),
      ),
    );
  }
}
