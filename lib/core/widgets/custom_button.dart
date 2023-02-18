import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.textColor,required this.buttonStyle,required this.text,required this.onPressed});
  final String text ;
  final ButtonStyle buttonStyle;
  final Function() onPressed;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: buttonStyle,
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.rate16.copyWith(
            fontWeight: FontWeight.w900,
            color:textColor?? Colors.white
          ),
        ),
      ),
    );
  }
}
