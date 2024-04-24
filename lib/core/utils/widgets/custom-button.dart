import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.backGround,
    required this.textColor,
     this.borderRadius,
    required this.text,
     this.fontSize,
     this.onPressed,
  });
 final Color backGround;
 final Color textColor ;
 final BorderRadius? borderRadius;
 final String text;
 final double? fontSize;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed:onPressed,
        style: TextButton.styleFrom(
          shape:RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          backgroundColor:backGround,
        ),
          child:Text(
        text,
            style: Styles.textStyle18.copyWith(
        color:textColor,
        fontWeight: FontWeight.bold,
        fontSize:fontSize ,
      ),
      )
      ),
    );
  }
}
